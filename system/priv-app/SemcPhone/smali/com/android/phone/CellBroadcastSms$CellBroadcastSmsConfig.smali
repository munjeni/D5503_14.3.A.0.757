.class final Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;
.super Ljava/lang/Object;
.source "CellBroadcastSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CellBroadcastSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CellBroadcastSmsConfig"
.end annotation


# static fields
.field private static mBSelected:[I

.field private static mConfigDataComplete:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 583
    const/16 v0, 0x20

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    .line 584
    const/16 v0, 0x5e

    new-array v0, v0, [I

    sput-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 577
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(ZI)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # I

    .prologue
    .line 577
    invoke-static {p0, p1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteBSelected(ZI)V

    return-void
.end method

.method static synthetic access$100(ZI)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # I

    .prologue
    .line 577
    invoke-static {p0, p1}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsBSelectedValue(ZI)V

    return-void
.end method

.method static synthetic access$1100([I)V
    .locals 0
    .param p0, "x0"    # [I

    .prologue
    .line 577
    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsConfig([I)V

    return-void
.end method

.method static synthetic access$1200()[I
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsBselectedValues()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 577
    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setConfigDataCompleteLanguage(I)V

    return-void
.end method

.method static synthetic access$400(I)V
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 577
    invoke-static {p0}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->setCbSmsNoOfStructs(I)V

    return-void
.end method

.method static synthetic access$500()[I
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getCbSmsAllValues()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 577
    invoke-static {}, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->getConfigDataLanguage()I

    move-result v0

    return v0
.end method

.method private static getCbSmsAllValues()[I
    .locals 1

    .prologue
    .line 635
    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    return-object v0
.end method

.method private static getCbSmsBselectedValues()[I
    .locals 1

    .prologue
    .line 630
    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    return-object v0
.end method

.method private static getConfigDataLanguage()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 662
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    const/4 v3, 0x2

    aget v0, v2, v3

    .line 665
    .local v0, "language":I
    if-lt v0, v1, :cond_0

    const/4 v2, 0x7

    if-le v0, v2, :cond_1

    .line 666
    :cond_0
    const-string v2, "CellBroadcastSms"

    const-string v3, "Error! Wrong language returned from RIL...defaulting to 1, english"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 670
    .end local v0    # "language":I
    :cond_1
    return v0
.end method

.method private static setCbSmsBSelectedValue(ZI)V
    .locals 2
    .param p0, "value"    # Z
    .param p1, "pos"    # I

    .prologue
    const/4 v0, 0x1

    .line 622
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 623
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    if-ne p0, v0, :cond_0

    :goto_0
    aput v0, v1, p1

    .line 627
    :goto_1
    return-void

    .line 623
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 625
    :cond_1
    const-string v0, "CellBroadcastSms"

    const-string v1, "Error! Invalid value position."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static setCbSmsConfig([I)V
    .locals 4
    .param p0, "configData"    # [I

    .prologue
    .line 587
    if-nez p0, :cond_0

    .line 588
    const-string v1, "CellBroadcastSms"

    const-string v2, "Error! No cell broadcast service categories returned."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :goto_0
    return-void

    .line 592
    :cond_0
    const/4 v1, 0x0

    aget v1, p0, v1

    const/16 v2, 0x5e

    if-le v1, v2, :cond_1

    .line 593
    const-string v1, "CellBroadcastSms"

    const-string v2, "Error! Wrong number of service categories returned from RIL"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 613
    :cond_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 614
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mBSelected:[I

    aget v2, p0, v0

    add-int/lit8 v3, v0, 0x2

    aget v3, p0, v3

    aput v3, v1, v2

    .line 613
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 618
    :cond_2
    sput-object p0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    goto :goto_0
.end method

.method private static setCbSmsNoOfStructs(I)V
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 641
    sget-object v0, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 642
    return-void
.end method

.method private static setConfigDataCompleteBSelected(ZI)V
    .locals 4
    .param p0, "value"    # Z
    .param p1, "serviceCategory"    # I

    .prologue
    const/4 v1, 0x1

    .line 646
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 647
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 648
    sget-object v2, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    add-int/lit8 v3, v0, 0x2

    if-ne p0, v1, :cond_1

    :goto_1
    aput v1, v2, v3

    .line 652
    :cond_0
    return-void

    .line 648
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 646
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method private static setConfigDataCompleteLanguage(I)V
    .locals 2
    .param p0, "language"    # I

    .prologue
    .line 656
    const/4 v0, 0x2

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 657
    sget-object v1, Lcom/android/phone/CellBroadcastSms$CellBroadcastSmsConfig;->mConfigDataComplete:[I

    aput p0, v1, v0

    .line 656
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 659
    :cond_0
    return-void
.end method
