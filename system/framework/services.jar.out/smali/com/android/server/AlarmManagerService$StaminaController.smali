.class Lcom/android/server/AlarmManagerService$StaminaController;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaminaController"
.end annotation


# static fields
.field private static final RESUME_ALARMS:I = 0x3

.field private static final SUPPRESS_ALARMS:I = 0x1

.field private static final SUPPRESS_ALARMS_BEFORE_SPECIFIC_TIME:I = 0x2


# instance fields
.field private mAlarmsState:I

.field private mEmergencyTimeOut:J

.field private mPowerState:I

.field private mReleaseAlarmsFrom:J

.field private final mSuperStaminaInternalWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuperStaminaUidWhitelist:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuppressedAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1806
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1760
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    .line 1784
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    .line 1791
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mReleaseAlarmsFrom:J

    .line 1807
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    .line 1808
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    .line 1809
    new-instance v1, Lcom/android/server/AlarmManagerService$StaminaReceiver;

    invoke-direct {v1, p1, p0}, Lcom/android/server/AlarmManagerService$StaminaReceiver;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$StaminaController;)V

    .line 1810
    .local v1, "staminaReceiver":Lcom/android/server/AlarmManagerService$StaminaReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1811
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.sonymobile.SUPER_STAMINA_POWER_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1812
    const-string v2, "com.sonymobile.XSSM_SMS_EMERGENCY_CB"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1813
    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1814
    return-void
.end method

.method private changeState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1918
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/AlarmManagerService$StaminaController;->changeState(IJ)V

    .line 1919
    return-void
.end method

.method private changeState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "releaseFrom"    # J

    .prologue
    .line 1929
    iget v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    if-eq p1, v0, :cond_0

    .line 1930
    iput p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    .line 1931
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mReleaseAlarmsFrom:J

    .line 1932
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1934
    :cond_0
    return-void
.end method

.method private isAlarmSuppressed(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2050
    iget v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 2057
    :cond_0
    :goto_0
    return v0

    .line 2052
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2054
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/server/AlarmManagerService$StaminaController;->isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0

    .line 2055
    :cond_1
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mReleaseAlarmsFrom:J

    invoke-direct {p0, p1, v2, v3}, Lcom/android/server/AlarmManagerService$StaminaController;->isExpiringAfter(Lcom/android/server/AlarmManagerService$Alarm;J)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 2050
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isExpiringAfter(Lcom/android/server/AlarmManagerService$Alarm;J)Z
    .locals 2
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 2061
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private update()Z
    .locals 8

    .prologue
    .line 2012
    const/4 v6, 0x0

    .line 2013
    .local v6, "result":Z
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2014
    .local v4, "batchIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Batch;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2015
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 2016
    .local v3, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2017
    .local v2, "alarmIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2018
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2019
    .local v0, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2020
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2021
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 2022
    const/4 v6, 0x1

    goto :goto_0

    .line 2027
    .end local v0    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "alarmIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2
    iget-object v7, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 2028
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v3}, Lcom/android/server/AlarmManagerService$Batch;-><init>()V

    .line 2029
    .restart local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2030
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2031
    .local v1, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v1}, Lcom/android/server/AlarmManagerService$StaminaController;->isAlarmSuppressed(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2032
    const/4 v6, 0x1

    .line 2033
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 2034
    invoke-virtual {v3, v1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    goto :goto_1

    .line 2037
    .end local v1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    iget-object v7, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    iget-object v7, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/android/server/AlarmManagerService;->access$2300(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    :cond_5
    return v6
.end method


# virtual methods
.method public addSuppressedAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 1
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 1834
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1835
    return-void
.end method

.method public addWhitelistedUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1946
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1947
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->isAlarmsSuppressedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1950
    :cond_0
    monitor-exit v1

    .line 1951
    return-void

    .line 1950
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J

    .prologue
    .line 2072
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2073
    const-string v0, " Super Stamina debug info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Power state ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2075
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Internal Whitelist ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2077
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2078
    .local v8, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 2080
    .end local v8    # "name":Ljava/lang/String;
    :cond_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " User Whitelist ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2083
    .local v9, "uid":Ljava/lang/Integer;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 2086
    .end local v9    # "uid":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2087
    const-string v0, "Suppressed alarms: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2089
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2090
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    const-string v2, "  "

    move-object v0, p1

    move-wide v3, p2

    move-wide v5, p4

    # invokes: Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/AlarmManagerService;->access$2400(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJ)V

    .line 2092
    :cond_2
    return-void
.end method

.method public isAlarmsSuppressedLocked()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1909
    iget v1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhitelistedLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 1974
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    .line 1975
    .local v0, "packageName":Ljava/lang/String;
    iget-object v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 1976
    .local v1, "uid":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1977
    const/4 v2, 0x1

    .line 1979
    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public onEmergencySMS(J)V
    .locals 21
    .param p1, "postponeTime"    # J

    .prologue
    .line 2102
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v15}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    .line 2103
    :try_start_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    if-eqz v15, :cond_1

    .line 2104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 2105
    .local v13, "rtc":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 2107
    .local v6, "elapsed":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mEmergencyTimeOut:J

    move-wide/from16 v17, v0

    cmp-long v15, v17, v6

    if-gtz v15, :cond_1

    .line 2108
    add-long v17, v6, p1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$StaminaController;->mEmergencyTimeOut:J

    .line 2110
    add-long v9, v6, p1

    .line 2111
    .local v9, "newElapsed":J
    add-long v11, v13, p1

    .line 2112
    .local v11, "newRtc":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 2115
    .local v3, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$StaminaController;->mEmergencyTimeOut:J

    move-wide/from16 v19, v0

    cmp-long v15, v17, v19

    if-gez v15, :cond_0

    .line 2116
    iget v15, v3, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    packed-switch v15, :pswitch_data_0

    .line 2127
    :goto_1
    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    move-wide/from16 v17, v0

    iget-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move-wide/from16 v19, v0

    sub-long v4, v17, v19

    .line 2128
    .local v4, "diff":J
    iput-wide v9, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2129
    add-long v17, v9, v4

    move-wide/from16 v0, v17

    iput-wide v0, v3, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    goto :goto_0

    .line 2134
    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v4    # "diff":J
    .end local v6    # "elapsed":J
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "newElapsed":J
    .end local v11    # "newRtc":J
    .end local v13    # "rtc":J
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 2119
    .restart local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v6    # "elapsed":J
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "newElapsed":J
    .restart local v11    # "newRtc":J
    .restart local v13    # "rtc":J
    :pswitch_0
    :try_start_1
    iput-wide v11, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_1

    .line 2123
    :pswitch_1
    iput-wide v9, v3, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_1

    .line 2134
    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6    # "elapsed":J
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "newElapsed":J
    .end local v11    # "newRtc":J
    .end local v13    # "rtc":J
    :cond_1
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2135
    return-void

    .line 2116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public remove(Landroid/app/PendingIntent;)V
    .locals 4
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    .line 1852
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1853
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1854
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1855
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1856
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1857
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1860
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1861
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1864
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1865
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1866
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1867
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1868
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1869
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1872
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1873
    return-void
.end method

.method public removeUser(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    .line 1876
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1877
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuppressedAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1878
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1879
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1880
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v2, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1881
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1884
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1885
    return-void
.end method

.method public removeWhitelistedUid(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1897
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1898
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaUidWhitelist:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->isAlarmsSuppressedLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService$StaminaController;->update()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1901
    :cond_0
    monitor-exit v1

    .line 1902
    return-void

    .line 1901
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resumeAlarmsAfter(J)V
    .locals 3
    .param p1, "start"    # J

    .prologue
    .line 1843
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1846
    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mAlarmsState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    monitor-exit v1

    .line 1849
    :goto_0
    return-void

    .line 1847
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/AlarmManagerService$StaminaController;->changeState(IJ)V

    .line 1848
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setInternalWhitelist(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1822
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1824
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1825
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mSuperStaminaInternalWhitelist:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 1826
    monitor-exit v1

    .line 1827
    return-void

    .line 1826
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPowerState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1989
    :try_start_0
    iput p1, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    .line 1990
    packed-switch p1, :pswitch_data_0

    .line 2001
    :goto_0
    monitor-exit v1

    .line 2002
    return-void

    .line 1992
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V

    goto :goto_0

    .line 2001
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1995
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->suppressAlarms(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1990
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public suppressAlarms(Z)V
    .locals 2
    .param p1, "suppress"    # Z

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->this$0:Lcom/android/server/AlarmManagerService;

    # getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1962
    if-eqz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/server/AlarmManagerService$StaminaController;->mPowerState:I

    if-nez v0, :cond_0

    monitor-exit v1

    .line 1965
    :goto_0
    return-void

    .line 1963
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/AlarmManagerService$StaminaController;->changeState(I)V

    .line 1964
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1963
    :cond_1
    const/4 v0, 0x3

    goto :goto_1
.end method
