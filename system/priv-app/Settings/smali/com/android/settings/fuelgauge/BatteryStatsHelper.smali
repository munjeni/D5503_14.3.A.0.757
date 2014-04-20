.class public Lcom/android/settings/fuelgauge/BatteryStatsHelper;
.super Ljava/lang/Object;
.source "BatteryStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryStatsHelper$1;,
        Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAppWifiRunning:J

.field private mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

.field private mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private mUm:Landroid/os/UserManager;

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserPower:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserSippers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    const-class v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    .line 83
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    .line 85
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    .line 89
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    .line 90
    const-wide/high16 v0, 0x3ff0000000000000L

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    .line 134
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    .line 135
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/BatteryStatsHelper;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addBluetoothUsage(J)V
    .locals 12
    .param p1, "uSecNow"    # J

    .prologue
    .line 705
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v5, 0x3e8

    div-long v3, v0, v5

    .line 706
    .local v3, "btOnTimeMs":J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v10, v0, v5

    .line 708
    .local v10, "btPower":D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v9

    .line 709
    .local v9, "btPingCount":I
    int-to-double v0, v9

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.at"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double/2addr v0, v5

    add-double/2addr v10, v0

    .line 711
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0632

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02006e

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    add-double/2addr v6, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 714
    .local v8, "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    const-string v1, "Bluetooth"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 715
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "drainType"    # Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;
    .param p3, "time"    # J
    .param p5, "iconId"    # I
    .param p6, "power"    # D

    .prologue
    .line 798
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 799
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    .line 800
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v4, 0x1

    new-array v8, v4, [D

    const/4 v4, 0x0

    aput-wide p6, v8, v4

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 802
    .local v0, "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 803
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 804
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 805
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .param p1, "uSecNow"    # J

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 698
    .local v3, "idleTimeMs":J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 700
    .local v6, "idlePower":D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0635

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02007f

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 702
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .param p1, "uSecNow"    # J

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 615
    .local v3, "phoneOnTimeMs":J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 617
    .local v6, "phoneOnPower":D
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v1, 0x7f0b0634

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f02008a

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 619
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 19
    .param p1, "uSecNow"    # J

    .prologue
    .line 643
    const-wide/16 v8, 0x0

    .line 644
    .local v8, "power":D
    const/4 v10, 0x5

    .line 645
    .local v10, "BINS":I
    const-wide/16 v5, 0x0

    .line 646
    .local v5, "signalTimeMs":J
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v15, v2, v17

    .line 648
    .local v15, "strengthTimeMs":J
    const-wide/16 v2, 0x3e8

    div-long v2, v15, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.on"

    invoke-virtual {v4, v7, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 650
    add-long/2addr v5, v15

    .line 646
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 652
    .end local v15    # "strengthTimeMs":J
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v13, v2, v17

    .line 653
    .local v13, "scanningTimeMs":J
    const-wide/16 v2, 0x3e8

    div-long v2, v13, v2

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "radio.scanning"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b0633

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020071

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v11

    .line 658
    .local v11, "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-eqz v2, :cond_1

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v2, v2, v17

    long-to-double v2, v2

    const-wide/high16 v17, 0x4059000000000000L

    mul-double v2, v2, v17

    long-to-double v0, v5

    move-wide/from16 v17, v0

    div-double v2, v2, v17

    iput-wide v2, v11, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 662
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 19
    .param p1, "uSecNow"    # J

    .prologue
    .line 622
    const-wide/16 v8, 0x0

    .line 623
    .local v8, "power":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v5, v2, v17

    .line 624
    .local v5, "screenOnTimeMs":J
    long-to-double v2, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "screen.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v17

    mul-double v2, v2, v17

    add-double/2addr v8, v2

    .line 625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    .line 627
    .local v15, "screenFullPower":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v12, v2, :cond_0

    .line 628
    int-to-float v2, v12

    const/high16 v3, 0x3f000000

    add-float/2addr v2, v3

    float-to-double v2, v2

    mul-double/2addr v2, v15

    const-wide/high16 v17, 0x4014000000000000L

    div-double v13, v2, v17

    .line 630
    .local v13, "screenBinPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v12, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v2

    const-wide/16 v17, 0x3e8

    div-long v10, v2, v17

    .line 631
    .local v10, "brightnessTime":J
    long-to-double v2, v10

    mul-double/2addr v2, v13

    add-double/2addr v8, v2

    .line 627
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 637
    .end local v10    # "brightnessTime":J
    .end local v13    # "screenBinPower":D
    :cond_0
    const-wide v2, 0x408f400000000000L

    div-double/2addr v8, v2

    .line 638
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b0630

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f020076

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 640
    return-void
.end method

.method private addUserUsage()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 718
    move v9, v5

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 719
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 720
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/util/List;

    .line 721
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 724
    if-eqz v1, :cond_2

    .line 725
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v0, v2, v1, v4}, Lcom/android/settings/users/UserUtils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 726
    if-eqz v1, :cond_1

    iget-object v0, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 727
    :goto_1
    if-nez v0, :cond_0

    .line 728
    iget v0, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b052b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    invoke-virtual {v1, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v2

    .line 737
    :goto_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    .line 738
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 739
    :goto_3
    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->USER:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 740
    iput-object v10, v0, Lcom/android/settings/fuelgauge/BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 741
    const-string v1, "User"

    invoke-direct {p0, v0, v8, v1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 718
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    move-object v0, v11

    .line 726
    goto :goto_1

    .line 734
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b052c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v10, v11

    goto :goto_2

    .line 738
    :cond_3
    const-wide/16 v6, 0x0

    goto :goto_3

    .line 743
    :cond_4
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 17
    .param p1, "uSecNow"    # J

    .prologue
    .line 681
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v11, v2, v7

    .line 682
    .local v11, "onTimeMs":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v2

    const-wide/16 v7, 0x3e8

    div-long v5, v2, v7

    .line 685
    .local v5, "runningTimeMs":J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    sub-long/2addr v5, v2

    .line 686
    const-wide/16 v2, 0x0

    cmp-long v2, v5, v2

    if-gez v2, :cond_0

    const-wide/16 v5, 0x0

    .line 687
    :cond_0
    const-wide/16 v2, 0x0

    mul-long/2addr v2, v11

    long-to-double v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v4, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v2, v7

    long-to-double v7, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v4, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    mul-double/2addr v7, v15

    add-double/2addr v2, v7

    const-wide v7, 0x408f400000000000L

    div-double v13, v2, v7

    .line 691
    .local v13, "wifiPower":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0b0631

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v7, 0x7f02008b

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    add-double/2addr v8, v13

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v10

    .line 693
    .local v10, "bs":Lcom/android/settings/fuelgauge/BatterySipper;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    const-string v3, "WIFI"

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 694
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .param p1, "bs"    # Lcom/android/settings/fuelgauge/BatterySipper;
    .param p3, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 665
    .local p2, "from":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 666
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 668
    .local v1, "wbs":Lcom/android/settings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 669
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 670
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 671
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 672
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 673
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    .line 674
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    .line 675
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    .line 676
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    .line 665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    .end local v1    # "wbs":Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getMobilePowerPerByte()D
    .locals 19

    .prologue
    .line 749
    const-wide/32 v1, 0x30d40

    .line 750
    .local v1, "MOBILE_BPS":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v16, "radio.active"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v15

    const-wide v17, 0x40ac200000000000L

    div-double v3, v15, v17

    .line 753
    .local v3, "MOBILE_POWER":D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityCount(II)J

    move-result-wide v9

    .line 754
    .local v9, "mobileRx":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->getNetworkActivityCount(II)J

    move-result-wide v11

    .line 755
    .local v11, "mobileTx":J
    add-long v7, v9, v11

    .line 757
    .local v7, "mobileData":J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v15}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    div-long v13, v15, v17

    .line 758
    .local v13, "radioDataUptimeMs":J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-eqz v15, :cond_0

    const-wide/16 v15, 0x8

    mul-long/2addr v15, v7

    const-wide/16 v17, 0x3e8

    mul-long v15, v15, v17

    div-long v5, v15, v13

    .line 762
    .local v5, "mobileBps":J
    :goto_0
    const-wide/16 v15, 0x8

    div-long v15, v5, v15

    long-to-double v15, v15

    div-double v15, v3, v15

    return-wide v15

    .line 758
    .end local v5    # "mobileBps":J
    :cond_0
    const-wide/32 v5, 0x30d40

    goto :goto_0
.end method

.method private getWifiPowerPerByte()D
    .locals 4

    .prologue
    .line 769
    .line 770
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double/2addr v0, v2

    .line 772
    const-wide v2, 0x40fe848000000000L

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private load()V
    .locals 4

    .prologue
    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 826
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 827
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 828
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 829
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 831
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 835
    :goto_0
    return-void

    .line 832
    :catch_0
    move-exception v0

    .line 833
    sget-object v1, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage(Z)V
    .locals 99
    .param p1, "includeZeroConsumption"    # Z

    .prologue
    .line 365
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const-string v6, "sensor"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v61

    check-cast v61, Landroid/hardware/SensorManager;

    .line 367
    .local v61, "sensorManager":Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    move/from16 v87, v0

    .line 368
    .local v87, "which":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v65

    .line 369
    .local v65, "speedSteps":I
    move/from16 v0, v65

    new-array v0, v0, [D

    move-object/from16 v49, v0

    .line 370
    .local v49, "powerCpuNormal":[D
    move/from16 v0, v65

    new-array v0, v0, [J

    move-object/from16 v21, v0

    .line 371
    .local v21, "cpuSpeedStepTimes":[J
    const/16 v45, 0x0

    .local v45, "p":I
    :goto_0
    move/from16 v0, v45

    move/from16 v1, v65

    if-ge v0, v1, :cond_0

    .line 372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "cpu.active"

    move/from16 v0, v45

    invoke-virtual {v5, v6, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v49, v45

    .line 371
    add-int/lit8 v45, v45, 0x1

    goto :goto_0

    .line 374
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getMobilePowerPerByte()D

    move-result-wide v36

    .line 375
    .local v36, "mobilePowerPerByte":D
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getWifiPowerPerByte()D

    move-result-wide v88

    .line 376
    .local v88, "wifiPowerPerByte":D
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v87

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v73

    .line 377
    .local v73, "uSecTime":J
    const-wide/16 v14, 0x0

    .line 378
    .local v14, "appWakelockTime":J
    const/16 v44, 0x0

    .line 379
    .local v44, "osApp":Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v73

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    .line 380
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v75

    .line 381
    .local v75, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v75 .. v75}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 382
    .local v13, "NU":I
    const/16 v34, 0x0

    .end local v45    # "p":I
    .local v34, "iu":I
    :goto_1
    move/from16 v0, v34

    if-ge v0, v13, :cond_1c

    .line 383
    move-object/from16 v0, v75

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 385
    .local v11, "u":Landroid/os/BatteryStats$Uid;
    const-wide/16 v47, 0x0

    .line 386
    .local v47, "power":D
    const-wide/16 v29, 0x0

    .line 387
    .local v29, "highestDrain":D
    const/4 v8, 0x0

    .line 389
    .local v8, "packageWithHighestDrain":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v52

    .line 390
    .local v52, "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v22, 0x0

    .line 391
    .local v22, "cpuTime":J
    const-wide/16 v19, 0x0

    .line 392
    .local v19, "cpuFgTime":J
    const-wide/16 v85, 0x0

    .line 393
    .local v85, "wakelockTime":J
    const-wide/16 v27, 0x0

    .line 395
    .local v27, "gpsTime":J
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 398
    invoke-interface/range {v52 .. v52}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Map$Entry;

    .line 399
    .local v24, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Landroid/os/BatteryStats$Uid$Proc;

    .line 400
    .local v53, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v53

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v78

    .line 401
    .local v78, "userTime":J
    move-object/from16 v0, v53

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v67

    .line 402
    .local v67, "systemTime":J
    move-object/from16 v0, v53

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v25

    .line 403
    .local v25, "foregroundTime":J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v25

    add-long v19, v19, v5

    .line 404
    add-long v5, v78, v67

    const-wide/16 v9, 0xa

    mul-long v70, v5, v9

    .line 405
    .local v70, "tmpCpuTime":J
    const/16 v72, 0x0

    .line 407
    .local v72, "totalTimeAtSpeeds":I
    const/16 v66, 0x0

    .local v66, "step":I
    :goto_3
    move/from16 v0, v66

    move/from16 v1, v65

    if-ge v0, v1, :cond_2

    .line 408
    move-object/from16 v0, v53

    move/from16 v1, v66

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v21, v66

    .line 409
    move/from16 v0, v72

    int-to-long v5, v0

    aget-wide v9, v21, v66

    add-long/2addr v5, v9

    long-to-int v0, v5

    move/from16 v72, v0

    .line 407
    add-int/lit8 v66, v66, 0x1

    goto :goto_3

    .line 411
    :cond_2
    if-nez v72, :cond_3

    const/16 v72, 0x1

    .line 413
    :cond_3
    const-wide/16 v50, 0x0

    .line 414
    .local v50, "processPower":D
    const/16 v66, 0x0

    :goto_4
    move/from16 v0, v66

    move/from16 v1, v65

    if-ge v0, v1, :cond_4

    .line 415
    aget-wide v5, v21, v66

    long-to-double v5, v5

    move/from16 v0, v72

    int-to-double v9, v0

    div-double v54, v5, v9

    .line 416
    .local v54, "ratio":D
    move-wide/from16 v0, v70

    long-to-double v5, v0

    mul-double v5, v5, v54

    aget-wide v9, v49, v66

    mul-double/2addr v5, v9

    add-double v50, v50, v5

    .line 414
    add-int/lit8 v66, v66, 0x1

    goto :goto_4

    .line 418
    .end local v54    # "ratio":D
    :cond_4
    add-long v22, v22, v70

    .line 423
    add-double v47, v47, v50

    .line 424
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 426
    :cond_5
    move-wide/from16 v29, v50

    .line 427
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_2

    .line 428
    :cond_6
    cmpg-double v5, v29, v50

    if-gez v5, :cond_1

    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 430
    move-wide/from16 v29, v50

    .line 431
    invoke-interface/range {v24 .. v24}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "packageWithHighestDrain":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8    # "packageWithHighestDrain":Ljava/lang/String;
    goto/16 :goto_2

    .line 435
    .end local v24    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v25    # "foregroundTime":J
    .end local v31    # "i$":Ljava/util/Iterator;
    .end local v50    # "processPower":D
    .end local v53    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v66    # "step":I
    .end local v67    # "systemTime":J
    .end local v70    # "tmpCpuTime":J
    .end local v72    # "totalTimeAtSpeeds":I
    .end local v78    # "userTime":J
    :cond_7
    cmp-long v5, v19, v22

    if-lez v5, :cond_8

    .line 439
    move-wide/from16 v22, v19

    .line 441
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v47, v47, v5

    .line 445
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v84

    .line 447
    .local v84, "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .restart local v31    # "i$":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Ljava/util/Map$Entry;

    .line 448
    .local v83, "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v83 .. v83}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 451
    .local v82, "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v82

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v69

    .line 452
    .local v69, "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v69, :cond_9

    .line 453
    move-object/from16 v0, v69

    move-wide/from16 v1, v73

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v85, v85, v5

    goto :goto_5

    .line 456
    .end local v69    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v82    # "wakelock":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v83    # "wakelockEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v85, v85, v5

    .line 457
    add-long v14, v14, v85

    .line 460
    move-wide/from16 v0, v85

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v45, v5, v9

    .line 462
    .local v45, "p":D
    add-double v47, v47, v45

    .line 466
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v38

    .line 467
    .local v38, "mobileRx":J
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v40

    .line 468
    .local v40, "mobileTx":J
    add-long v5, v38, v40

    long-to-double v5, v5

    mul-double v45, v5, v36

    .line 469
    add-double v47, v47, v45

    .line 473
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v92

    .line 474
    .local v92, "wifiRx":J
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v11, v5, v6}, Landroid/os/BatteryStats$Uid;->getNetworkActivityCount(II)J

    move-result-wide v96

    .line 475
    .local v96, "wifiTx":J
    add-long v5, v92, v96

    long-to-double v5, v5

    mul-double v45, v5, v88

    .line 476
    add-double v47, v47, v45

    .line 480
    move-wide/from16 v0, v73

    move/from16 v2, v87

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v90, v5, v9

    .line 481
    .local v90, "wifiRunningTimeMs":J
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    add-long v5, v5, v90

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    .line 482
    move-wide/from16 v0, v90

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v45, v5, v9

    .line 484
    add-double v47, v47, v45

    .line 488
    move-wide/from16 v0, v73

    move/from16 v2, v87

    invoke-virtual {v11, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v94, v5, v9

    .line 489
    .local v94, "wifiScanTimeMs":J
    move-wide/from16 v0, v94

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.scan"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v45, v5, v9

    .line 491
    add-double v47, v47, v45

    .line 493
    const/16 v18, 0x0

    .local v18, "bin":I
    :goto_6
    const/4 v5, 0x5

    move/from16 v0, v18

    if-ge v0, v5, :cond_b

    .line 494
    move/from16 v0, v18

    move-wide/from16 v1, v73

    move/from16 v3, v87

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiBatchedScanTime(IJI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v16, v5, v9

    .line 495
    .local v16, "batchScanTimeMs":J
    move-wide/from16 v0, v16

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "wifi.batchedscan"

    move/from16 v0, v18

    invoke-virtual {v7, v9, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v9

    mul-double v45, v5, v9

    .line 497
    add-double v47, v47, v45

    .line 493
    add-int/lit8 v18, v18, 0x1

    goto :goto_6

    .line 504
    .end local v16    # "batchScanTimeMs":J
    :cond_b
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v62

    .line 506
    .local v62, "sensorStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v62 .. v62}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .end local v31    # "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/util/Map$Entry;

    .line 507
    .local v58, "sensorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v58 .. v58}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Landroid/os/BatteryStats$Uid$Sensor;

    .line 508
    .local v57, "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v57 .. v57}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v59

    .line 509
    .local v59, "sensorHandle":I
    invoke-virtual/range {v57 .. v57}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v69

    .line 510
    .restart local v69    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v69

    move-wide/from16 v1, v73

    move/from16 v3, v87

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v63, v5, v9

    .line 511
    .local v63, "sensorTime":J
    const-wide/16 v42, 0x0

    .line 512
    .local v42, "multiplier":D
    packed-switch v59, :pswitch_data_0

    .line 518
    const/4 v5, -0x1

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v60

    .line 520
    .local v60, "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-interface/range {v60 .. v60}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .local v32, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Landroid/hardware/Sensor;

    .line 521
    .local v56, "s":Landroid/hardware/Sensor;
    invoke-virtual/range {v56 .. v56}, Landroid/hardware/Sensor;->getHandle()I

    move-result v5

    move/from16 v0, v59

    if-ne v5, v0, :cond_c

    .line 522
    invoke-virtual/range {v56 .. v56}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v42, v0

    .line 527
    .end local v32    # "i$":Ljava/util/Iterator;
    .end local v56    # "s":Landroid/hardware/Sensor;
    .end local v60    # "sensorList":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    :cond_d
    :goto_8
    move-wide/from16 v0, v63

    long-to-double v5, v0

    mul-double v5, v5, v42

    const-wide v9, 0x408f400000000000L

    div-double v45, v5, v9

    .line 528
    add-double v47, v47, v45

    .line 532
    goto :goto_7

    .line 514
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v42

    .line 515
    move-wide/from16 v27, v63

    .line 516
    goto :goto_8

    .line 537
    .end local v42    # "multiplier":D
    .end local v57    # "sensor":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v58    # "sensorEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v59    # "sensorHandle":I
    .end local v63    # "sensorTime":J
    .end local v69    # "timer":Landroid/os/BatteryStats$Timer;
    :cond_e
    const/16 v33, 0x0

    .line 538
    .local v33, "isOtherUser":Z
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v76

    .line 539
    .local v76, "userId":I
    const-wide/16 v5, 0x0

    cmpl-double v5, v47, v5

    if-nez v5, :cond_f

    if-nez p1, :cond_f

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_10

    .line 540
    :cond_f
    new-instance v4, Lcom/android/settings/fuelgauge/BatterySipper;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [D

    const/16 v98, 0x0

    aput-wide v47, v12, v98

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 543
    .local v4, "app":Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v22

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 544
    move-wide/from16 v0, v27

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 545
    move-wide/from16 v0, v90

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 546
    move-wide/from16 v0, v19

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 547
    move-wide/from16 v0, v85

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 548
    move-wide/from16 v0, v38

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    .line 549
    move-wide/from16 v0, v40

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    .line 550
    move-wide/from16 v0, v92

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    .line 551
    move-wide/from16 v0, v96

    iput-wide v0, v4, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    .line 552
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_13

    .line 553
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    :goto_9
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    if-nez v5, :cond_10

    .line 569
    move-object/from16 v44, v4

    .line 572
    .end local v4    # "app":Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_10
    const-wide/16 v5, 0x0

    cmpl-double v5, v47, v5

    if-nez v5, :cond_11

    if-eqz p1, :cond_12

    .line 573
    :cond_11
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_17

    .line 574
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    add-double v5, v5, v47

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    .line 382
    :cond_12
    :goto_a
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 554
    .restart local v4    # "app":Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_13
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_14

    .line 555
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 556
    :cond_14
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, v76

    if-eq v0, v5, :cond_16

    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/16 v6, 0x2710

    if-lt v5, v6, :cond_16

    .line 558
    const/16 v33, 0x1

    .line 559
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/List;

    .line 560
    .local v35, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    if-nez v35, :cond_15

    .line 561
    new-instance v35, Ljava/util/ArrayList;

    .end local v35    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    invoke-direct/range {v35 .. v35}, Ljava/util/ArrayList;-><init>()V

    .line 562
    .restart local v35    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    move/from16 v0, v76

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 564
    :cond_15
    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 566
    .end local v35    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 575
    .end local v4    # "app":Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_17
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3ea

    if-ne v5, v6, :cond_18

    .line 576
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    add-double v5, v5, v47

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    goto :goto_a

    .line 577
    :cond_18
    if-eqz v33, :cond_1a

    .line 578
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v76

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v77

    check-cast v77, Ljava/lang/Double;

    .line 579
    .local v77, "userPower":Ljava/lang/Double;
    if-nez v77, :cond_19

    .line 580
    invoke-static/range {v47 .. v48}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v77

    .line 584
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    move/from16 v0, v76

    move-object/from16 v1, v77

    invoke-virtual {v5, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_a

    .line 582
    :cond_19
    invoke-virtual/range {v77 .. v77}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double v5, v5, v47

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v77

    goto :goto_b

    .line 586
    .end local v77    # "userPower":Ljava/lang/Double;
    :cond_1a
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v5, v47, v5

    if-lez v5, :cond_1b

    move-wide/from16 v0, v47

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 587
    :cond_1b
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double v5, v5, v47

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    goto/16 :goto_a

    .line 595
    .end local v8    # "packageWithHighestDrain":Ljava/lang/String;
    .end local v11    # "u":Landroid/os/BatteryStats$Uid;
    .end local v18    # "bin":I
    .end local v19    # "cpuFgTime":J
    .end local v22    # "cpuTime":J
    .end local v27    # "gpsTime":J
    .end local v29    # "highestDrain":D
    .end local v33    # "isOtherUser":Z
    .end local v38    # "mobileRx":J
    .end local v40    # "mobileTx":J
    .end local v45    # "p":D
    .end local v47    # "power":D
    .end local v52    # "processStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v62    # "sensorStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v76    # "userId":I
    .end local v84    # "wakelockStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v85    # "wakelockTime":J
    .end local v90    # "wifiRunningTimeMs":J
    .end local v92    # "wifiRx":J
    .end local v94    # "wifiScanTimeMs":J
    .end local v96    # "wifiTx":J
    :cond_1c
    if-eqz v44, :cond_1e

    .line 596
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v9, 0x3e8

    mul-long/2addr v6, v9

    move/from16 v0, v87

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v80, v5, v9

    .line 598
    .local v80, "wakeTimeMillis":J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move/from16 v0, v87

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long/2addr v5, v9

    add-long/2addr v5, v14

    sub-long v80, v80, v5

    .line 600
    const-wide/16 v5, 0x0

    cmp-long v5, v80, v5

    if-lez v5, :cond_1e

    .line 601
    move-wide/from16 v0, v80

    long-to-double v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double v47, v5, v9

    .line 604
    .restart local v47    # "power":D
    move-object/from16 v0, v44

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long v5, v5, v80

    move-object/from16 v0, v44

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 605
    move-object/from16 v0, v44

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    add-double v5, v5, v47

    move-object/from16 v0, v44

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    .line 606
    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->values:[D

    const/4 v6, 0x0

    aget-wide v9, v5, v6

    add-double v9, v9, v47

    aput-wide v9, v5, v6

    .line 607
    move-object/from16 v0, v44

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    cmpl-double v5, v5, v9

    if-lez v5, :cond_1d

    move-object/from16 v0, v44

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->value:D

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 608
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    add-double v5, v5, v47

    move-object/from16 v0, p0

    iput-wide v5, v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    .line 611
    .end local v47    # "power":D
    .end local v80    # "wakeTimeMillis":J
    :cond_1e
    return-void

    .line 512
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 776
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    .line 777
    .local v6, "which":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 778
    .local v4, "uSecTime":J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 779
    .local v2, "uSecNow":J
    move-wide v0, v2

    .line 784
    .local v0, "timeSinceUnplugged":J
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addUserUsage()V

    .line 785
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addPhoneUsage(J)V

    .line 786
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addScreenUsage(J)V

    .line 787
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addWiFiUsage(J)V

    .line 788
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addBluetoothUsage(J)V

    .line 789
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addIdleUsage(J)V

    .line 791
    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 792
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->addRadioUsage(J)V

    .line 794
    :cond_0
    return-void
.end method


# virtual methods
.method public clearStats()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 141
    return-void
.end method

.method public create(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 156
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 158
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 160
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUm:Landroid/os/UserManager;

    .line 161
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 162
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->sStatsXfer:Lcom/android/internal/os/BatteryStatsImpl;

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    sget-object v0, Lcom/android/settings/fuelgauge/BatterySipper;->sUidCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0
.end method

.method public getMaxPower()D
    .locals 2

    .prologue
    .line 816
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    return-wide v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    return-object v0
.end method

.method public getStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->load()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getTotalPower()D
    .locals 2

    .prologue
    .line 820
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    return-wide v0
.end method

.method public getUsageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 809
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    return-object v0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->abort()V

    .line 168
    :cond_0
    return-void
.end method

.method public refreshStats(Z)V
    .locals 3
    .param p1, "includeZeroConsumption"    # Z

    .prologue
    const-wide/16 v0, 0x0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    .line 332
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    .line 333
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    .line 334
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiPower:D

    .line 335
    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothPower:D

    .line 336
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mAppWifiRunning:J

    .line 338
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 339
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mWifiSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 340
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 341
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserSippers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 342
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUserPower:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 344
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->processAppUsage(Z)V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->processMiscUsage()V

    .line 347
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mUsageList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 350
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;->abort()V

    .line 355
    :cond_0
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;-><init>(Lcom/android/settings/fuelgauge/BatteryStatsHelper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    .line 356
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setPriority(I)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestThread:Lcom/android/settings/fuelgauge/BatteryStatsHelper$NameAndIconLoader;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 358
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 360
    :cond_1
    monitor-exit v1

    .line 362
    :cond_2
    return-void

    .line 360
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startBatteryDetailPage(Landroid/preference/PreferenceActivity;Lcom/android/settings/fuelgauge/BatterySipper;Z)V
    .locals 10

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->getStats()Lcom/android/internal/os/BatteryStatsImpl;

    .line 183
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 184
    const-string v0, "title"

    iget-object v1, p2, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v0, "percent"

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mTotalPower:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v0, "gauge"

    invoke-virtual {p2}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x4059000000000000L

    mul-double/2addr v3, v5

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mMaxPower:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v0, "duration"

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsPeriod:J

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 190
    const-string v0, "iconPackage"

    iget-object v1, p2, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v0, "iconId"

    iget v1, p2, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v0, "noCoverage"

    iget-wide v3, p2, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 193
    iget-object v0, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "uid"

    iget-object v1, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    :cond_0
    const-string v0, "drainType"

    iget-object v1, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 197
    const-string v0, "showLocationButton"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    sget-object v0, Lcom/android/settings/fuelgauge/BatteryStatsHelper$1;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v1, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 309
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v0, 0x0

    const v3, 0x7f0b0642

    aput v3, v1, v0

    .line 312
    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    .line 317
    :cond_1
    :goto_0
    const-string v3, "types"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 318
    const-string v1, "values"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 319
    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0b062c

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 321
    return-void

    .line 205
    :pswitch_0
    iget-object v3, p2, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 206
    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 219
    const/16 v0, 0xb

    new-array v0, v0, [D

    const/4 v4, 0x0

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x1

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x2

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x3

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x4

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x5

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x6

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/4 v4, 0x7

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/16 v4, 0x8

    iget-wide v5, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    long-to-double v5, v5

    aput-wide v5, v0, v4

    const/16 v4, 0x9

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v4

    const/16 v4, 0xa

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v4

    .line 233
    iget-object v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    sget-object v5, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    if-ne v4, v5, :cond_1

    .line 234
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 235
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-direct {v5, v4, v6, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 236
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v7, ""

    iget v8, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-virtual {v6, v5, v7, v8, v9}, Landroid/os/BatteryStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 237
    invoke-virtual {v5}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 238
    const-string v5, "report_details"

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 241
    new-instance v5, Lcom/android/internal/util/FastPrintWriter;

    const/4 v6, 0x0

    const/16 v7, 0x400

    invoke-direct {v5, v4, v6, v7}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 242
    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelper;->mStatsType:I

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v6, v5, v7, v3}, Landroid/os/BatteryStats;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 243
    invoke-virtual {v5}, Lcom/android/internal/util/FastPrintWriter;->flush()V

    .line 244
    const-string v3, "report_checkin_details"

    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 251
    :pswitch_1
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    .line 255
    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v4, v0, v3

    goto/16 :goto_0

    .line 263
    :pswitch_2
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    .line 273
    const/16 v0, 0x8

    new-array v0, v0, [D

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x2

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x3

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x4

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x5

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x6

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x7

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    goto/16 :goto_0

    .line 286
    :pswitch_3
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_3

    .line 296
    const/16 v0, 0x8

    new-array v0, v0, [D

    const/4 v3, 0x0

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x1

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x2

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x3

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x4

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileRxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x5

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->mobileTxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x6

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    const/4 v3, 0x7

    iget-wide v4, p2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiTxBytes:J

    long-to-double v4, v4

    aput-wide v4, v0, v3

    goto/16 :goto_0

    .line 201
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 206
    :array_0
    .array-data 4
        0x7f0b0636
        0x7f0b0637
        0x7f0b0638
        0x7f0b0639
        0x7f0b063a
        0x7f0b063d
        0x7f0b063c
        0x7f0b063f
        0x7f0b063e
        0x7f0b0640
        0x7f0b0641
    .end array-data

    .line 251
    :array_1
    .array-data 4
        0x7f0b0642
        0x7f0b0643
    .end array-data

    .line 263
    :array_2
    .array-data 4
        0x7f0b063a
        0x7f0b0636
        0x7f0b0637
        0x7f0b0638
        0x7f0b063d
        0x7f0b063c
        0x7f0b063f
        0x7f0b063e
    .end array-data

    .line 286
    :array_3
    .array-data 4
        0x7f0b0642
        0x7f0b0636
        0x7f0b0637
        0x7f0b0638
        0x7f0b063d
        0x7f0b063c
        0x7f0b063f
        0x7f0b063e
    .end array-data
.end method
