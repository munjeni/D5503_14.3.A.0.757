.class final Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobsController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/print/PrintJobInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/print/PrintSettingsFragment;
    .param p2, "x1"    # Lcom/android/settings/print/PrintSettingsFragment$1;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 352
    new-instance v0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsLoader;-><init>(Landroid/content/Context;)V

    .line 354
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 347
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 436
    :cond_1
    return-void

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "print_jobs_category"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_3

    .line 364
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v2}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 367
    :cond_3
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 369
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    .line 370
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    if-ge v8, v9, :cond_1

    .line 371
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/print/PrintJobInfo;

    .line 373
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v1}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 376
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 377
    const-class v1, Lcom/android/settings/print/PrintJobSettingsFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 413
    :goto_1
    :pswitch_0
    iget-object v11, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v12, 0x7f0b0611

    const/4 v1, 0x2

    new-array v13, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getPrinterName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v13, v1

    const/4 v14, 0x1

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v1

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getCreationTime()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x3

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 418
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 430
    :goto_2
    :pswitch_1
    invoke-virtual {v10}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 431
    const-string v2, "EXTRA_PRINT_JOB_ID"

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v3

    invoke-virtual {v3}, Landroid/print/PrintJobId;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0

    .line 383
    :pswitch_2
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_4

    .line 384
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0b0612

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 388
    :cond_4
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0b0613

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 395
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0b0614

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 401
    :pswitch_4
    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->isCancelling()Z

    move-result v1

    if-nez v1, :cond_5

    .line 402
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0b0615

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 406
    :cond_5
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v2, 0x7f0b0613

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v7}, Landroid/print/PrintJobInfo;->getLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 421
    :pswitch_5
    const v1, 0x7f020067

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 426
    :pswitch_6
    const v1, 0x7f020068

    invoke-virtual {v10, v1}, Landroid/preference/Preference;->setIcon(I)V

    goto/16 :goto_2

    .line 380
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_6
    .end packed-switch
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Landroid/print/PrintJobInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Landroid/print/PrintJobInfo;>;>;"
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintJobsController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintSettingsFragment;->mActivePrintJobsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 441
    return-void
.end method
