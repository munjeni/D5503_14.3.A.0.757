.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;
.super Ljava/lang/Thread;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 2159
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v6, :cond_0

    .line 2160
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "mComposer must not be null"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2162
    :cond_0
    const/4 v5, 0x0

    .line 2163
    .local v5, "sendingStarted":Z
    const/4 v2, 0x0

    .line 2166
    .local v2, "isConversationInvalid":Z
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessageUseInputNumber(Z)V
    invoke-static {v6, v10}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 2169
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    const/4 v7, 0x1

    # setter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z
    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1302(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z

    .line 2172
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v7, v7, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 2174
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v6

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v8, v8, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_1

    .line 2178
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 2179
    const/4 v2, 0x1

    .line 2182
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedMessage()Lcom/android/mms/transaction/MessageSender;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/android/mms/transaction/MessageSender;

    move-result-object v4

    .line 2183
    .local v4, "sender":Lcom/android/mms/transaction/MessageSender;
    if-eqz v4, :cond_3

    .line 2184
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v6

    invoke-interface {v4, v6, v7}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 2190
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshMsgList(Z)V
    invoke-static {v6, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1500(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 2192
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2193
    :goto_0
    :try_start_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1300(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2196
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V

    goto :goto_0

    .line 2198
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2201
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .end local v4    # "sender":Lcom/android/mms/transaction/MessageSender;
    :catch_0
    move-exception v1

    .line 2202
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "ConversationActivityUiController"

    const-string v7, "sendMessage failed"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2204
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    move v3, v5

    .line 2206
    .local v3, "messageAdded":Z
    if-eqz v3, :cond_2

    .line 2207
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6, v11}, Lcom/sonyericsson/conversations/ui/Composer;->hasSlideshowAttachment(Z)V

    .line 2208
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v6, v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6, v10}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    .line 2209
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v6, v10}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromDraftStack(Z)V

    .line 2213
    :cond_2
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshEditorViews(Z)V
    invoke-static {v6, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 2217
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # invokes: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessageUseInputNumber(Z)V
    invoke-static {v6, v11}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$1200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    .line 2218
    .end local v3    # "messageAdded":Z
    :cond_3
    return-void

    .line 2198
    .restart local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .restart local v4    # "sender":Lcom/android/mms/transaction/MessageSender;
    :cond_4
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2200
    const/4 v5, 0x1

    goto :goto_1
.end method
