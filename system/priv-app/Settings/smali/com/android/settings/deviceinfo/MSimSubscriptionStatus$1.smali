.class Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "MSimSubscriptionStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 122
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 124
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 125
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_1

    .line 134
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 128
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_1
    const-string v4, "message"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CellBroadcastMessage;

    .line 129
    .local v1, "cbMessage":Landroid/telephony/CellBroadcastMessage;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getServiceCategory()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_0

    .line 130
    invoke-virtual {v1}, Landroid/telephony/CellBroadcastMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "latestAreaInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus$1;->this$0:Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;

    # invokes: Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->updateAreaInfo(Ljava/lang/String;)V
    invoke-static {v4, v3}, Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;->access$000(Lcom/android/settings/deviceinfo/MSimSubscriptionStatus;Ljava/lang/String;)V

    goto :goto_0
.end method
