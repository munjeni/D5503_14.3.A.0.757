.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppOpsState$AppOpEntry;,
        Lcom/android/settings/applications/AppOpsState$AppEntry;,
        Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    }
.end annotation


# static fields
.field public static final ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final APP_OP_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;


# instance fields
.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;

.field final mOpLabels:[Ljava/lang/CharSequence;

.field final mOpSummaries:[Ljava/lang/CharSequence;

.field final mPm:Landroid/content/pm/PackageManager;

.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xc

    const/16 v5, 0x8

    const/4 v2, 0x7

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 104
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 121
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_2

    new-array v2, v5, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 140
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_4

    new-array v2, v6, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 167
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_6

    const/16 v2, 0x10

    new-array v2, v2, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 202
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0x9

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 224
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    const/16 v2, 0x31

    aput v2, v1, v4

    new-array v2, v3, [Z

    aput-boolean v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 229
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->LOCATION_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->PERSONAL_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MESSAGING_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->MEDIA_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->DEVICE_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->BOOTUP_TEMPLATE:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->ALL_TEMPLATES:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 472
    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    return-void

    .line 104
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 121
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x1d
        0x1e
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 140
    :array_4
    .array-data 4
        0xe
        0x2f
        0x10
        0x11
        0x12
        0x13
        0xf
        0x30
        0x14
        0x2e
        0x15
        0x16
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 167
    :array_6
    .array-data 4
        0x3
        0x1a
        0x1b
        0x1c
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 202
    :array_8
    .array-data 4
        0xb
        0x19
        0xd
        0x17
        0x18
        0x28
        0x2b
        0x2c
        0x2d
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 61
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    .line 65
    const-string v0, "appops_manager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    .line 66
    return-void
.end method

.method private addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8
    .param p2, "pkgOps"    # Landroid/app/AppOpsManager$PackageOps;
    .param p3, "appEntry"    # Lcom/android/settings/applications/AppOpsState$AppEntry;
    .param p4, "opEntry"    # Landroid/app/AppOpsManager$OpEntry;
    .param p5, "allowMerge"    # Z
    .param p6, "switchOrder"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$PackageOps;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            "Landroid/app/AppOpsManager$OpEntry;",
            "ZI)V"
        }
    .end annotation

    .prologue
    .line 494
    .local p1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 495
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 496
    .local v2, "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v4

    if-ne v4, p3, :cond_2

    .line 497
    invoke-virtual {v2}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 498
    .local v3, "lastExe":Z
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    .line 499
    .local v1, "entryExe":Z
    :goto_1
    if-ne v3, v1, :cond_2

    .line 502
    invoke-virtual {v2, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    .line 516
    .end local v1    # "entryExe":Z
    .end local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :goto_2
    return-void

    .line 497
    .restart local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 498
    .restart local v3    # "lastExe":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 507
    .end local v2    # "last":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    .end local v3    # "lastExe":Z
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 508
    .local v0, "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    if-eqz v0, :cond_3

    .line 509
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 512
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .end local v0    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    .line 515
    .restart local v0    # "entry":Lcom/android/settings/applications/AppOpsState$AppOpEntry;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "applyFilters"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Z)",
            "Lcom/android/settings/applications/AppOpsState$AppEntry;"
        }
    .end annotation

    .prologue
    .local p2, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    const/4 v0, 0x0

    .line 525
    if-nez p4, :cond_0

    .line 527
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x2200

    invoke-virtual {v2, p3, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 536
    :cond_0
    if-eqz p5, :cond_3

    .line 538
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsState;->shouldShowUserApps()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_2

    .line 555
    :cond_1
    :goto_0
    return-object v0

    .line 530
    :catch_0
    move-exception v1

    .line 531
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AppOpsState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find info for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/AppOpsState;->shouldShowSystemApps()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, p4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    .line 549
    :cond_3
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 550
    .local v0, "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v0, :cond_1

    .line 551
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .end local v0    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 552
    .restart local v0    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->loadLabel(Landroid/content/Context;)V

    .line 553
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private shouldShowSystemApps()Z
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_system_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private shouldShowUserApps()Z
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "show_user_apps"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2
    .param p1, "tpl"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 519
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/AppOpsState;->buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public buildState(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 35
    .param p1, "tpl"    # Lcom/android/settings/applications/AppOpsState$OpsTemplate;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/AppOpsState$OpsTemplate;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/applications/AppOpsState$AppOpEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 569
    .local v3, "context":Landroid/content/Context;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 570
    .local v4, "appEntries":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/applications/AppOpsState$AppEntry;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 572
    .local v9, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/applications/AppOpsState$AppOpEntry;>;"
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 573
    .local v31, "perms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 574
    .local v30, "permOps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v2, 0x32

    new-array v0, v2, [I

    move-object/from16 v28, v0

    .line 575
    .local v28, "opToOrder":[I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    array-length v2, v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_1

    .line 576
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->showPerms:[Z

    aget-boolean v2, v2, v25

    if-eqz v2, :cond_0

    .line 577
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v25

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v29

    .line 578
    .local v29, "perm":Ljava/lang/String;
    if-eqz v29, :cond_0

    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 579
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v25

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    aget v2, v2, v25

    aput v25, v28, v2

    .line 575
    .end local v29    # "perm":Ljava/lang/String;
    :cond_0
    add-int/lit8 v25, v25, 0x1

    goto :goto_0

    .line 587
    :cond_1
    if-nez p3, :cond_3

    const/4 v7, 0x1

    .line 590
    .local v7, "applyFilters":Z
    :goto_1
    if-eqz p3, :cond_4

    .line 591
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1, v5}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v34

    .line 596
    .local v34, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :goto_2
    if-eqz v34, :cond_8

    .line 597
    const/16 v25, 0x0

    :goto_3
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_8

    .line 598
    move-object/from16 v0, v34

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    .line 599
    .local v10, "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v11

    .line 601
    .local v11, "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v11, :cond_5

    .line 597
    :cond_2
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 587
    .end local v7    # "applyFilters":Z
    .end local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v34    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 593
    .restart local v7    # "applyFilters":Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->ops:[I

    invoke-virtual {v2, v5}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v34

    .restart local v34    # "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    goto :goto_2

    .line 604
    .restart local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .restart local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    :cond_5
    const/16 v26, 0x0

    .local v26, "j":I
    :goto_4
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_2

    .line 605
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v26

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/AppOpsManager$OpEntry;

    .line 606
    .local v12, "opEntry":Landroid/app/AppOpsManager$OpEntry;
    if-nez p3, :cond_6

    const/4 v13, 0x1

    :goto_5
    if-nez p3, :cond_7

    const/4 v14, 0x0

    :goto_6
    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 604
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 606
    :cond_6
    const/4 v13, 0x0

    goto :goto_5

    :cond_7
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget v14, v28, v2

    goto :goto_6

    .line 613
    .end local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v12    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v26    # "j":I
    :cond_8
    if-eqz p3, :cond_a

    .line 614
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 616
    .local v23, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v33

    .line 617
    .local v33, "pi":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    .end local v33    # "pi":Landroid/content/pm/PackageInfo;
    :goto_7
    const/16 v25, 0x0

    :goto_8
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v25

    if-ge v0, v2, :cond_13

    .line 626
    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/pm/PackageInfo;

    .line 627
    .local v22, "appInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/AppOpsState;->getAppEntry(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Z)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v11

    .line 629
    .restart local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    if-nez v11, :cond_b

    .line 625
    :cond_9
    add-int/lit8 v25, v25, 0x1

    goto :goto_8

    .line 621
    .end local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v22    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_a
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v32, v0

    .line 622
    .local v32, "permsArray":[Ljava/lang/String;
    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/AppOpsState;->mPm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v23

    .restart local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    goto :goto_7

    .line 632
    .end local v32    # "permsArray":[Ljava/lang/String;
    .restart local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .restart local v22    # "appInfo":Landroid/content/pm/PackageInfo;
    :cond_b
    const/16 v24, 0x0

    .line 633
    .local v24, "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v10, 0x0

    .line 634
    .restart local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 635
    const/16 v26, 0x0

    .restart local v26    # "j":I
    :goto_9
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v2, v2

    move/from16 v0, v26

    if-ge v0, v2, :cond_9

    .line 636
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v2, :cond_d

    .line 637
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v2, v2, v26

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_d

    .line 635
    :cond_c
    add-int/lit8 v26, v26, 0x1

    goto :goto_9

    .line 646
    :cond_d
    const/16 v27, 0x0

    .local v27, "k":I
    :goto_a
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v27

    if-ge v0, v2, :cond_c

    .line 647
    move-object/from16 v0, v31

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v5, v5, v26

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 646
    :cond_e
    :goto_b
    add-int/lit8 v27, v27, 0x1

    goto :goto_a

    .line 652
    :cond_f
    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->hasOp(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 655
    if-nez v24, :cond_10

    .line 656
    new-instance v24, Ljava/util/ArrayList;

    .end local v24    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 657
    .restart local v24    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    new-instance v10, Landroid/app/AppOpsManager$PackageOps;

    .end local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    move-object/from16 v0, v22

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v24

    invoke-direct {v10, v2, v5, v0}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    .line 661
    .restart local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    :cond_10
    new-instance v12, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v12 .. v21}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJIII)V

    .line 663
    .restart local v12    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    move-object/from16 v0, v24

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    if-nez p3, :cond_11

    const/4 v13, 0x1

    :goto_c
    if-nez p3, :cond_12

    const/4 v14, 0x0

    :goto_d
    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/settings/applications/AppOpsState;->addOp(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    goto :goto_b

    :cond_11
    const/4 v13, 0x0

    goto :goto_c

    :cond_12
    invoke-virtual {v12}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget v14, v28, v2

    goto :goto_d

    .line 672
    .end local v10    # "pkgOps":Landroid/app/AppOpsManager$PackageOps;
    .end local v11    # "appEntry":Lcom/android/settings/applications/AppOpsState$AppEntry;
    .end local v12    # "opEntry":Landroid/app/AppOpsManager$OpEntry;
    .end local v22    # "appInfo":Landroid/content/pm/PackageInfo;
    .end local v24    # "dummyOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v26    # "j":I
    .end local v27    # "k":I
    :cond_13
    sget-object v2, Lcom/android/settings/applications/AppOpsState;->APP_OP_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v9, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 675
    return-object v9

    .line 618
    :catch_0
    move-exception v2

    goto/16 :goto_7
.end method
