.class Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;
.super Landroid/os/Handler;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundHandler"
.end annotation


# instance fields
.field mRunning:Z

.field final mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsState;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    .line 961
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 904
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler$1;-><init>(Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    .line 962
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 967
    const/4 v8, 0x0

    .line 968
    .local v8, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 969
    :try_start_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 970
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .end local v8    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    .local v9, "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-object v8, v9

    .line 973
    .end local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    .restart local v8    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    :cond_0
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 974
    if-eqz v8, :cond_1

    .line 975
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_1

    .line 976
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v10}, Lcom/android/settings/applications/ApplicationsState$Session;->handleRebuildList()V

    .line 975
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 973
    .end local v2    # "i":I
    :catchall_0
    move-exception v10

    :goto_1
    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 980
    :cond_1
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    .line 1081
    :goto_2
    :pswitch_0
    return-void

    .line 984
    :pswitch_1
    const/4 v7, 0x0

    .line 985
    .local v7, "numDone":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 987
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_4

    const/4 v10, 0x6

    if-ge v7, v10, :cond_4

    .line 988
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v10, :cond_2

    .line 989
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 990
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 992
    .local v4, "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 994
    .end local v4    # "m":Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 995
    .local v3, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v12, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 996
    add-int/lit8 v7, v7, 0x1

    .line 997
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v10, v3}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 987
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1001
    .end local v3    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1003
    const/4 v10, 0x6

    if-lt v7, v10, :cond_5

    .line 1004
    const/4 v10, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1001
    :catchall_1
    move-exception v10

    :try_start_5
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v10

    .line 1006
    :cond_5
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1010
    .end local v2    # "i":I
    .end local v7    # "numDone":I
    :pswitch_2
    const/4 v7, 0x0

    .line 1011
    .restart local v7    # "numDone":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1013
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_a

    const/4 v10, 0x2

    if-ge v7, v10, :cond_a

    .line 1014
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1015
    .local v1, "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget-boolean v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->mounted:Z

    if-nez v10, :cond_9

    .line 1016
    :cond_6
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1017
    :try_start_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v10, v12}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 1018
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v10, :cond_7

    .line 1019
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1020
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1022
    .restart local v4    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1024
    .end local v4    # "m":Landroid/os/Message;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    .line 1026
    :cond_8
    monitor-exit v1

    .line 1013
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1026
    :catchall_2
    move-exception v10

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v10

    .line 1030
    .end local v1    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_3
    move-exception v10

    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v10

    :cond_a
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1031
    if-lez v7, :cond_b

    .line 1032
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1033
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1036
    :cond_b
    const/4 v10, 0x2

    if-lt v7, v10, :cond_c

    .line 1037
    const/4 v10, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1039
    :cond_c
    const/4 v10, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 1043
    .end local v2    # "i":I
    .end local v7    # "numDone":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v11, v10, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v11

    .line 1045
    :try_start_a
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    if-eqz v10, :cond_d

    .line 1047
    monitor-exit v11

    goto/16 :goto_2

    .line 1078
    :catchall_4
    move-exception v10

    monitor-exit v11
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v10

    .line 1050
    :cond_d
    :try_start_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1051
    .local v5, "now":J
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_13

    .line 1052
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 1053
    .restart local v1    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v14, -0x1

    cmp-long v10, v12, v14

    if-eqz v10, :cond_e

    iget-boolean v10, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    if-eqz v10, :cond_12

    .line 1054
    :cond_e
    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_f

    iget-wide v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    const-wide/16 v14, 0x4e20

    sub-long v14, v5, v14

    cmp-long v10, v12, v14

    if-gez v10, :cond_11

    .line 1056
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    if-nez v10, :cond_10

    .line 1057
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1058
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1060
    .restart local v4    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1062
    .end local v4    # "m":Landroid/os/Message;
    :cond_10
    iput-wide v5, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeLoadStart:J

    .line 1063
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v12, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v12, v10, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 1064
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v12, v12, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v10, v12, v13}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 1067
    :cond_11
    monitor-exit v11

    goto/16 :goto_2

    .line 1051
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1070
    .end local v1    # "entry":Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_13
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_14

    .line 1071
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x5

    invoke-virtual {v10, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1072
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mRunning:Z

    .line 1073
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v12, 0x6

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1075
    .restart local v4    # "m":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->this$0:Lcom/android/settings/applications/ApplicationsState;

    iget-object v10, v10, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1078
    .end local v4    # "m":Landroid/os/Message;
    :cond_14
    monitor-exit v11
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto/16 :goto_2

    .line 973
    .end local v2    # "i":I
    .end local v5    # "now":J
    .end local v8    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    .restart local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    :catchall_5
    move-exception v10

    move-object v8, v9

    .end local v9    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    .restart local v8    # "rebuildingSessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$Session;>;"
    goto/16 :goto_1

    .line 980
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
