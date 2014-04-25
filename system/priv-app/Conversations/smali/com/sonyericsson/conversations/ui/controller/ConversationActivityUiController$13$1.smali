.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;
.super Ljava/lang/Thread;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

.field final synthetic val$pd:Landroid/app/ProgressDialog;

.field final synthetic val$threadId:J


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;JLandroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 2443
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    iput-wide p2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->val$threadId:J

    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2450
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 2451
    .local v1, "message":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2452
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 2455
    :cond_0
    iget-wide v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->val$threadId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 2456
    sget-object v3, Lcom/sonyericsson/provider/TelephonyExtra$SemcThreads;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->val$threadId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2458
    .local v2, "uri":Landroid/net/Uri;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2463
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v4, v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-wide v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->val$threadId:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2469
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;->this$1:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    new-instance v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1$1;

    invoke-direct {v4, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13$1;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2482
    return-void

    .line 2465
    :catch_0
    move-exception v0

    .line 2466
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Failed to delete wallpaper for deleted conversation."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
