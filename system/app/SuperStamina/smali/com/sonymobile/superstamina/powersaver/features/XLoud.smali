.class public Lcom/sonymobile/superstamina/powersaver/features/XLoud;
.super Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;
.source "XLoud.java"


# static fields
.field private static final XLOUD_DEFAULT:I

.field private static final XLOUD_ENABLED:Ljava/lang/String; = "com.sonyericsson.xloud_enabled"

.field private static final XLOUD_OFF:I = 0x0

.field private static final XLOUD_PRODUCT_DEFAULT:Ljava/lang/String; = "ro.semc.xloud.default_setting"

.field private static final XLOUD_SUPPORTED:Z

.field private static final XLOUD_SUPPORTED_PROPERTY:Ljava/lang/String; = "ro.semc.xloud.supported"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mLastValue:I

.field private mObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    const-string v0, "ro.semc.xloud.default_setting"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->XLOUD_DEFAULT:I

    .line 36
    const-string v0, "ro.semc.xloud.supported"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->XLOUD_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const-string v0, "xLOUD"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 40
    new-instance v0, Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/superstamina/powersaver/features/XLoud$1;-><init>(Lcom/sonymobile/superstamina/powersaver/features/XLoud;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mObserver:Landroid/database/ContentObserver;

    .line 68
    invoke-virtual {p0}, Lcom/sonymobile/superstamina/powersaver/features/BaseFeature;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mContentResolver:Landroid/content/ContentResolver;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/superstamina/powersaver/features/XLoud;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/sonymobile/superstamina/powersaver/features/XLoud;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/superstamina/powersaver/features/XLoud;

    .prologue
    .line 18
    iget v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mLastValue:I

    return v0
.end method

.method private getCurrentMode()I
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.sonyericsson.xloud_enabled"

    sget v2, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->XLOUD_DEFAULT:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setxLOUD(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mLastValue:I

    .line 108
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.sonyericsson.xloud_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    return-void
.end method


# virtual methods
.method protected applySaving()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->setxLOUD(I)V

    .line 84
    return-void
.end method

.method public isAvailableOnDevice()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->XLOUD_SUPPORTED:Z

    return v0
.end method

.method protected restoreSetting(I)V
    .locals 0
    .param p1, "savedState"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->setxLOUD(I)V

    .line 89
    return-void
.end method

.method protected saveSetting()I
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->getCurrentMode()I

    move-result v0

    return v0
.end method

.method protected startListening()V
    .locals 4

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "com.sonyericsson.xloud_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 95
    return-void
.end method

.method protected stopListening()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/sonymobile/superstamina/powersaver/features/XLoud;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 100
    return-void
.end method
