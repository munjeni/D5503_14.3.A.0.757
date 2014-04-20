.class public Lcom/android/settings/applications/AppOpsState$AppOpEntry;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppOpsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppOpEntry"
.end annotation


# instance fields
.field private final mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

.field private final mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgOps:Landroid/app/AppOpsManager$PackageOps;

.field private final mSwitchOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSwitchOrder:I


# direct methods
.method public constructor <init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V
    .locals 1
    .param p1, "pkg"    # Landroid/app/AppOpsManager$PackageOps;
    .param p2, "op"    # Landroid/app/AppOpsManager$OpEntry;
    .param p3, "app"    # Lcom/android/settings/applications/AppOpsState$AppEntry;
    .param p4, "switchOrder"    # I

    .prologue
    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    .line 313
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    .line 320
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    .line 321
    iput-object p3, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 322
    iput p4, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    .line 323
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p2}, Lcom/android/settings/applications/AppOpsState$AppEntry;->addOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    return-void
.end method

.method private static addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V
    .locals 6
    .param p1, "op"    # Landroid/app/AppOpsManager$OpEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;",
            "Landroid/app/AppOpsManager$OpEntry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 329
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 330
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 331
    .local v1, "pos":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v3

    if-eq v2, v3, :cond_0

    .line 332
    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 344
    .end local v1    # "pos":Landroid/app/AppOpsManager$OpEntry;
    :goto_1
    return-void

    .line 338
    .restart local v1    # "pos":Landroid/app/AppOpsManager$OpEntry;
    :cond_0
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 339
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 329
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 343
    .end local v1    # "pos":Landroid/app/AppOpsManager$OpEntry;
    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 4
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/AppOpsManager$OpEntry;",
            ">;[",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .line 376
    .local p1, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 377
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget-object v2, p2, v2

    .line 386
    :goto_0
    return-object v2

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 381
    if-lez v1, :cond_1

    .line 382
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v2

    aget-object v2, p2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 386
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public addOp(Landroid/app/AppOpsManager$OpEntry;)V
    .locals 2
    .param p1, "op"    # Landroid/app/AppOpsManager$OpEntry;

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->addOp(Lcom/android/settings/applications/AppOpsState$AppOpEntry;Landroid/app/AppOpsManager$OpEntry;)V

    .line 348
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 349
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v1

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToSwitch(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getOpSwitch(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    if-nez v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->addOp(Ljava/util/ArrayList;Landroid/app/AppOpsManager$OpEntry;)V

    .line 352
    :cond_0
    return-void
.end method

.method public getAppEntry()Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    return-object v0
.end method

.method public getOpEntry(I)Landroid/app/AppOpsManager$OpEntry;
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    return-object v0
.end method

.method public getPackageOps()Landroid/app/AppOpsManager$PackageOps;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mPkgOps:Landroid/app/AppOpsManager$PackageOps;

    return-object v0
.end method

.method public getSummaryText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "state"    # Lcom/android/settings/applications/AppOpsState;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->mOpSummaries:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getSwitchOrder()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOrder:I

    return v0
.end method

.method public getSwitchText(Lcom/android/settings/applications/AppOpsState;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "state"    # Lcom/android/settings/applications/AppOpsState;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mSwitchOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 398
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/settings/applications/AppOpsState;->mOpLabels:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getCombinedText(Ljava/util/ArrayList;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeText(Landroid/content/res/Resources;Z)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "showEmptyText"    # Z

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 404
    const v0, 0x7f0b051c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 412
    :goto_0
    return-object v0

    .line 406
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x40000

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 412
    :cond_1
    if-eqz p2, :cond_2

    const v0, 0x7f0b051d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mOps:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->mApp:Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
