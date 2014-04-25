.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodingChanged(III)V
    .locals 5
    .param p1, "oldEncoding"    # I
    .param p2, "newEncoding"    # I
    .param p3, "newMessageSize"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    .line 393
    if-ne p2, v4, :cond_1

    move v1, v2

    .line 394
    .local v1, "turned16bit":Z
    :goto_0
    if-ne p1, v4, :cond_2

    if-eq p2, v4, :cond_2

    .line 396
    .local v2, "turnedFrom16bit":Z
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEncodingChangedNotificationEnabled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 422
    :cond_0
    :goto_2
    return-void

    .end local v1    # "turned16bit":Z
    .end local v2    # "turnedFrom16bit":Z
    :cond_1
    move v1, v3

    .line 393
    goto :goto_0

    .restart local v1    # "turned16bit":Z
    :cond_2
    move v2, v3

    .line 394
    goto :goto_1

    .line 399
    .restart local v2    # "turnedFrom16bit":Z
    :cond_3
    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->shouldDisplayDialog(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 400
    invoke-static {p3}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->newInstance(I)Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;

    move-result-object v0

    .line 401
    .local v0, "rwd":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    iget-object v3, v3, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v4, "EncodingChangeDialog"

    invoke-virtual {v0, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 402
    .end local v0    # "rwd":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    :cond_4
    if-nez v1, :cond_5

    if-eqz v2, :cond_0

    .line 404
    :cond_5
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    # getter for: Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->access$400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;

    invoke-direct {v4, p0, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method
