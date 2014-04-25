.class public abstract Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/memory/LowMemoryListener;
.implements Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;
.implements Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;,
        Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;
    }
.end annotation


# static fields
.field private static final BOTTOM_FRAGMENT_EDITOR_TAG:Ljava/lang/String; = "bottom_fragment_editor"

.field private static final INSTANCE_THREAD_ID:Ljava/lang/String; = "ThreadId"

.field private static final SEND_ANIMATION_DURATION:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "ConversationActivityUiController"


# instance fields
.field protected mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

.field protected final mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

.field protected mBackDisabled:Z

.field protected mBackKeyPressed:Z

.field protected mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field protected mConvListContentArea:Landroid/widget/RelativeLayout;

.field protected mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

.field protected mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

.field mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

.field protected mFocusMessageUri:Landroid/net/Uri;

.field protected final mFragmentManager:Landroid/app/FragmentManager;

.field private final mHandler:Landroid/os/Handler;

.field protected mHighlightPattern:Ljava/util/regex/Pattern;

.field private mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

.field protected mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

.field private mIsResumed:Z

.field private mIsSending:Z

.field private mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

.field protected mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

.field protected mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

.field protected mPd:Landroid/app/ProgressDialog;

.field private mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

.field private mSendLock:Ljava/lang/Object;

.field private mSendingMessageKey:J

.field protected mStopDraftSavingFlag:Z

.field protected mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

.field private mWaitingForAddedMessage:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 126
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 128
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 130
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 140
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    .line 153
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    .line 159
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 161
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 167
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    .line 169
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 171
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 173
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    .line 272
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$2;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    .line 388
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$3;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    .line 426
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    .line 427
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 428
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->register(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 429
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->clearStatusAfterSend()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessageUseInputNumber(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Lcom/android/mms/transaction/MessageSender;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedMessage()Lcom/android/mms/transaction/MessageSender;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshMsgList(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->refreshEditorViews(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Intent;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Landroid/content/Intent;
    .param p2, "x2"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->addRecipientOnToFiled(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/net/Uri;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # J

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->applyWallpaper(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showExternalSendErrorToast(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->convertMessageTypeInUiThread(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Landroid/net/Uri;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/net/Uri;

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToMainActivity()V

    return-void
.end method

.method private addRecipientOnToFiled(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 888
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setFocus(Z)V

    .line 890
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1, p1, p2}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :goto_0
    return-void

    .line 891
    :catch_0
    move-exception v0

    .line 892
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "ConversationActivityUiController"

    const-string v2, "Could not add recipient. Contacts is not installed."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private applyWallpaper(Landroid/net/Uri;J)V
    .locals 5
    .param p1, "selectedWallpaper"    # Landroid/net/Uri;
    .param p2, "threadId"    # J

    .prologue
    .line 605
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v2

    .line 606
    .local v2, "wallpapers":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 607
    .local v0, "context":Landroid/content/Context;
    if-nez p1, :cond_0

    .line 612
    :try_start_0
    invoke-virtual {v2, v0, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->deleteWallpaper(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 628
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3, p2, p3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(J)V

    .line 629
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->refresh()V

    .line 630
    :goto_1
    return-void

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Ljava/io/IOException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Could not delete wallpaper."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 622
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    invoke-virtual {v2, v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->storeWallpaper(Landroid/content/Context;Landroid/net/Uri;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 623
    :catch_1
    move-exception v1

    .line 624
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Could not store selected wallpaper."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private backToMainActivity()V
    .locals 2

    .prologue
    .line 1189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 1191
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getConversationHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1194
    .local v0, "homeIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1195
    return-void
.end method

.method private cancelAllTasks()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 966
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 968
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    if-eqz v0, :cond_1

    .line 972
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 973
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    .line 975
    :cond_1
    return-void
.end method

.method static checkActivityLaunchAllowed(Landroid/content/Intent;)Z
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1864
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1871
    const-string v2, "android.intent.action.SENDTO"

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1873
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1874
    .local v0, "intentUri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    .line 1876
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 1877
    .local v1, "scheme":Ljava/lang/String;
    const-string v2, "mmsto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mailto"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1883
    :cond_0
    const/4 v2, 0x0

    .line 1889
    .end local v0    # "intentUri":Landroid/net/Uri;
    .end local v1    # "scheme":Ljava/lang/String;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private clearStatusAfterSend()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 538
    return-void
.end method

.method private convertMessageTypeInUiThread(I)V
    .locals 2
    .param p1, "messageType"    # I

    .prologue
    .line 990
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$5;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 995
    return-void
.end method

.method private deleteConversation()V
    .locals 15

    .prologue
    const v5, 0x7f0700dd

    const/4 v8, 0x0

    .line 2429
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$13;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 2488
    .local v6, "delPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v3, 0x1010355

    const v4, 0x7f070044

    const v7, 0x7f0700db

    const/4 v9, 0x0

    const/4 v14, 0x1

    move-object v0, p0

    move-object v10, v8

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    invoke-virtual/range {v0 .. v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    .line 2493
    return-void
.end method

.method private determineSendIntentDataType(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)I
    .locals 4
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1314
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 1315
    .local v0, "forwardUri":Landroid/net/Uri;
    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 1316
    .local v1, "replyAllUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 1317
    .local v2, "sendIntentType":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isUriInitedAndNotEmpty(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1318
    const/4 v2, 0x2

    .line 1322
    :cond_0
    :goto_0
    return v2

    .line 1319
    :cond_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isUriInitedAndNotEmpty(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1320
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private dismissSaveContactDialog()V
    .locals 0

    .prologue
    .line 770
    invoke-static {}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->dismissSaveToContactDialog()V

    .line 771
    return-void
.end method

.method private finishUpToFieldFragment()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->finishUp()V

    .line 459
    :cond_0
    return-void
.end method

.method private getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1851
    const/4 v0, 0x0

    .line 1853
    .local v0, "subject":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftSubject()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1860
    :goto_0
    return-object v0

    .line 1854
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getThreadIdForMessage(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1149
    const-wide/16 v7, -0x1

    .line 1150
    .local v7, "id":J
    const/4 v6, 0x0

    .line 1152
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "thread_id"

    aput-object v1, v2, v0

    .line 1155
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1157
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v7

    .line 1161
    :cond_0
    if-eqz v6, :cond_1

    .line 1162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1165
    :cond_1
    return-wide v7

    .line 1161
    .end local v2    # "projection":[Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 1162
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1161
    :cond_2
    throw v0
.end method

.method private handleIntent(Landroid/os/Bundle;)Z
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x1

    const-wide/16 v12, 0x0

    const/4 v8, 0x0

    .line 798
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 802
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkActivityLaunchAllowed(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 803
    const v9, 0x7f0700d9

    invoke-virtual {p0, v9, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 805
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v9}, Landroid/app/Activity;->finish()V

    .line 864
    :goto_0
    return v8

    .line 814
    :cond_0
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->isNotificationIntent(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 815
    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/ConversationActivityLaunchHelper;->getUnReadMessagesThreadsFromNotificationIntent(Landroid/content/Intent;)I

    move-result v7

    .line 817
    .local v7, "unReadMessageThreads":I
    if-ne v7, v9, :cond_1

    .line 818
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 819
    .local v3, "mExtras":Landroid/os/Bundle;
    const-string v10, "unReadMessageUri"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 820
    .local v4, "sUri":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 824
    .end local v3    # "mExtras":Landroid/os/Bundle;
    .end local v4    # "sUri":Ljava/lang/String;
    .end local v7    # "unReadMessageThreads":I
    :cond_1
    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v11}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sonyericsson/conversations/ui/persist/IntentData;->parse(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/conversations/ui/persist/IntentData;

    move-result-object v10

    iput-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    .line 827
    if-eqz p1, :cond_6

    .line 828
    const-string v10, "ThreadId"

    invoke-virtual {v2, v10, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    .line 829
    .local v5, "threadId":J
    cmp-long v10, v5, v12

    if-nez v10, :cond_5

    .line 830
    const-string v8, "ThreadId"

    invoke-virtual {p1, v8, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 836
    :goto_1
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v8, v5, v6}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 841
    .end local v5    # "threadId":J
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    :goto_2
    if-nez v0, :cond_2

    .line 843
    const-wide/16 v10, -0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v11, v8}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 847
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 848
    const-string v8, "android.intent.action.MAIN"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    :cond_2
    const-string v8, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 855
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v8}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 858
    :cond_3
    new-instance v8, Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v10, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEncodingListener:Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;

    invoke-direct {v8, v10, v0, v11}, Lcom/sonyericsson/conversations/ui/Composer;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Conversation;Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;)V

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 859
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v8, v8, Lcom/sonyericsson/conversations/ui/persist/IntentData;->focusMessageUri:Landroid/net/Uri;

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 860
    const-string v8, "highlight"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 861
    .local v1, "highlight":Ljava/lang/String;
    if-eqz v1, :cond_4

    .line 862
    invoke-static {v1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    invoke-static {v8, v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v8

    iput-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    :cond_4
    move v8, v9

    .line 864
    goto/16 :goto_0

    .line 833
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .end local v1    # "highlight":Ljava/lang/String;
    .restart local v5    # "threadId":J
    :cond_5
    const-string v10, "ThreadId"

    invoke-virtual {v2, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v8, v2}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 838
    .end local v5    # "threadId":J
    :cond_6
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    iget-object v0, v8, Lcom/sonyericsson/conversations/ui/persist/IntentData;->conversation:Lcom/sonyericsson/conversations/model/Conversation;

    .restart local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    goto :goto_2
.end method

.method private handleMmsException()V
    .locals 2

    .prologue
    .line 1537
    const v0, 0x7f0700ca

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1540
    return-void
.end method

.method private handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V
    .locals 3
    .param p1, "re"    # Lcom/sonyericsson/conversations/util/ResizeException;

    .prologue
    .line 1523
    const v1, 0x7f0700ca

    .line 1524
    .local v1, "errorText":I
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/util/ResizeException;->getResizeError()I

    move-result v0

    .line 1526
    .local v0, "errorCode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1529
    const v1, 0x7f0700cb

    .line 1533
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1534
    return-void
.end method

.method private handleSecurityException()V
    .locals 2

    .prologue
    .line 1543
    const v0, 0x7f07006b

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1546
    return-void
.end method

.method private handleSendIntentContentUri(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "contentUri"    # Landroid/net/Uri;

    .prologue
    .line 1549
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v3, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1555
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1568
    :catch_0
    move-exception v1

    .line 1569
    .local v1, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string v3, "ConversationActivityUiController"

    const-string v4, "Could not resize image enough to fit the message"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1570
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    goto :goto_0

    .line 1556
    .end local v1    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    :cond_2
    :try_start_1
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1557
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVideoType(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1571
    :catch_1
    move-exception v0

    .line 1572
    .local v0, "e":Lcom/google/android/mms/MmsException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_0

    .line 1558
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :cond_3
    :try_start_2
    invoke-static {p1}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "application/ogg"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1560
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1573
    :catch_2
    move-exception v2

    .line 1574
    .local v2, "se":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto :goto_0

    .line 1561
    .end local v2    # "se":Ljava/lang/SecurityException;
    :cond_5
    :try_start_3
    const-string v3, "text/x-vCard"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1562
    const/4 v3, 0x1

    invoke-direct {p0, p2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcardType(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0
.end method

.method private handleSendIntentMessageUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1468
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 1484
    :cond_0
    :goto_0
    return-void

    .line 1474
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1475
    .local v0, "msg":Lcom/sonyericsson/conversations/model/Message;
    instance-of v1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_3

    move-object v1, v0

    .line 1476
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMmsUri(Lcom/sonyericsson/conversations/model/MmsMessage;)V

    .line 1481
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 1482
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getPriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setMessagePriority(I)V

    goto :goto_0

    .line 1477
    :cond_3
    instance-of v1, v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v1, :cond_2

    .line 1478
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    move-object v1, v0

    check-cast v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v1, v1, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSendIntentMmsUri(Lcom/sonyericsson/conversations/model/MmsMessage;)V
    .locals 4
    .param p1, "msg"    # Lcom/sonyericsson/conversations/model/MmsMessage;

    .prologue
    .line 1442
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v2, p1}, Lcom/sonyericsson/conversations/ui/Composer;->loadSlideshowModelFromMessageUri(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;)V

    .line 1444
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1447
    .local v0, "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    instance-of v1, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v1, :cond_1

    .line 1449
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MmsMessage;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1451
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1456
    .restart local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1457
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v1, v1, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1462
    .end local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1459
    .restart local v0    # "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private handleSendMultipleIntentContentUris(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1579
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v6, :cond_1

    .line 1615
    :cond_0
    return-void

    .line 1583
    :cond_1
    invoke-virtual {p1}, Ljava/util/AbstractList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1584
    .local v0, "contentIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/net/Uri;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1585
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 1588
    .local v1, "contentUri":Landroid/net/Uri;
    :try_start_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v6, v1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    .line 1594
    .local v5, "type":Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1595
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    move v6, v7

    :goto_1
    invoke-virtual {v9, v1, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addImage(Landroid/net/Uri;Z)V
    :try_end_0
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 1606
    .end local v5    # "type":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1607
    .local v3, "re":Lcom/sonyericsson/conversations/util/ResizeException;
    const-string v6, "ConversationActivityUiController"

    const-string v9, "Could not resize image enough to fit the message"

    invoke-static {v6, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1608
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleResizeException(Lcom/sonyericsson/conversations/util/ResizeException;)V

    goto :goto_0

    .end local v3    # "re":Lcom/sonyericsson/conversations/util/ResizeException;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3
    move v6, v8

    .line 1595
    goto :goto_1

    .line 1596
    :cond_4
    :try_start_1
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1597
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    move v6, v7

    :goto_2
    invoke-direct {p0, v1, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVideoType(Landroid/net/Uri;Z)V
    :try_end_1
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 1609
    .end local v5    # "type":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 1610
    .local v2, "e":Lcom/google/android/mms/MmsException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleMmsException()V

    goto :goto_0

    .end local v2    # "e":Lcom/google/android/mms/MmsException;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_5
    move v6, v8

    .line 1597
    goto :goto_2

    .line 1600
    :cond_6
    :try_start_2
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "application/ogg"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1602
    :cond_7
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_8

    move v6, v7

    :goto_3
    invoke-virtual {v9, v1, v6}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;Z)V
    :try_end_2
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1611
    .end local v5    # "type":Ljava/lang/String;
    :catch_2
    move-exception v4

    .line 1612
    .local v4, "se":Ljava/lang/SecurityException;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSecurityException()V

    goto :goto_0

    .end local v4    # "se":Ljava/lang/SecurityException;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_8
    move v6, v8

    .line 1602
    goto :goto_3

    .line 1603
    :cond_9
    :try_start_3
    const-string v6, "text/x-vCard"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1604
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_a

    move v6, v7

    :goto_4
    invoke-direct {p0, v1, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleVcardType(Landroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/sonyericsson/conversations/util/ResizeException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :cond_a
    move v6, v8

    goto :goto_4
.end method

.method private handleVcardType(Landroid/net/Uri;Z)V
    .locals 3
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1515
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/sonyericsson/conversations/util/VCardUtil;->createVCardFileFromInputStream(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v0

    .line 1516
    .local v0, "vCardUri":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 1518
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, v0, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;Z)V

    .line 1520
    :cond_0
    return-void
.end method

.method private handleVideoType(Landroid/net/Uri;Z)V
    .locals 4
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "showToast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1489
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)I

    move-result v0

    .line 1492
    .local v0, "errorCode":I
    if-nez v0, :cond_0

    .line 1493
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1, p1, p2}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;Z)V

    .line 1496
    :cond_0
    if-eqz p2, :cond_1

    .line 1497
    const/16 v1, 0xca

    if-ne v0, v1, :cond_2

    .line 1498
    const v1, 0x7f070067

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    .line 1509
    :cond_1
    :goto_0
    const/16 v1, 0xc9

    if-ne v0, v1, :cond_4

    .line 1510
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Content must not be sent"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1501
    :cond_2
    const/16 v1, 0xd2

    if-eq v0, v1, :cond_3

    const/16 v1, 0xd4

    if-ne v0, v1, :cond_1

    .line 1503
    :cond_3
    const v1, 0x7f07012e

    invoke-virtual {p0, v1, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    goto :goto_0

    .line 1512
    :cond_4
    return-void
.end method

.method private isUriInitedAndNotEmpty(Landroid/net/Uri;)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1304
    if-eqz p1, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextDraftIfComposerEmpty()V
    .locals 4

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1765
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1769
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$1;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    .line 1770
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mLoadNextDraftTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$LoadNextDraftTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1772
    :cond_1
    return-void
.end method

.method private messageSubjectPrefixForType(I)Ljava/lang/String;
    .locals 3
    .param p1, "sendIntentType"    # I

    .prologue
    .line 1376
    const/4 v0, 0x0

    .line 1377
    .local v0, "prefix":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1388
    :goto_0
    return-object v0

    .line 1379
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1381
    goto :goto_0

    .line 1383
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1377
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private prepareSendAnimation()V
    .locals 7

    .prologue
    .line 720
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->prepareForSendAnimation()V

    .line 722
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->getMessageItemSendAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 723
    .local v2, "messageItemSendAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getTextSendAnimator()Landroid/animation/Animator;

    move-result-object v1

    .line 724
    .local v1, "editTextAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getPileViewSendAnimator()Landroid/animation/Animator;

    move-result-object v3

    .line 725
    .local v3, "pileViewAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getComposerSendAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 727
    .local v0, "composerAnimator":Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 728
    .local v4, "sendAnimator":Landroid/animation/AnimatorSet;
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 730
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 731
    const-wide/16 v5, 0x258

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 732
    new-instance v5, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 750
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setComposerSendAnimator(Landroid/animation/ObjectAnimator;)V

    .line 751
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v5, v4, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setSendAnimatorAndItemAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 752
    return-void
.end method

.method private prepareSendingComposedMessage()Lcom/android/mms/transaction/MessageSender;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 2362
    const/4 v1, 0x0

    .line 2364
    .local v1, "sender":Lcom/android/mms/transaction/MessageSender;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2365
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 2366
    .local v0, "message":Lcom/sonyericsson/conversations/model/Message;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v2

    .line 2368
    .local v2, "threadId":J
    instance-of v4, v0, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-eqz v4, :cond_1

    .line 2369
    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedMms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;

    move-result-object v1

    .line 2377
    .end local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    .end local v2    # "threadId":J
    :cond_0
    :goto_0
    return-object v1

    .line 2370
    .restart local v0    # "message":Lcom/sonyericsson/conversations/model/Message;
    .restart local v2    # "threadId":J
    :cond_1
    instance-of v4, v0, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v4, :cond_2

    .line 2371
    invoke-direct {p0, v0, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendingComposedSms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;

    move-result-object v1

    goto :goto_0

    .line 2373
    :cond_2
    new-instance v4, Lcom/google/android/mms/MmsException;

    const-string v5, "message originated from unknown type!"

    invoke-direct {v4, v5}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private prepareSendingComposedMms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;
    .locals 11
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 2279
    const/4 v0, 0x0

    .line 2281
    .local v0, "sender":Lcom/android/mms/transaction/MessageSender;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2284
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isSubjectEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2285
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 2289
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2290
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f07009d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 2295
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft()V

    .line 2299
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 2300
    .local v6, "messageId":J
    invoke-static {v6, v7}, Lcom/sonyericsson/provider/TelephonyExtra$MmsRecipientThreads;->getContentUriForMmsMessage(J)Landroid/net/Uri;

    move-result-object v10

    .local v10, "uri":Landroid/net/Uri;
    move-object v1, p1

    .line 2301
    check-cast v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v9

    .line 2305
    .local v9, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-static {}, Lcom/sonyericsson/conversations/model/ModelCache;->getInstance()Lcom/sonyericsson/conversations/model/ModelCache;

    move-result-object v1

    invoke-virtual {v1, v10, v9}, Lcom/sonyericsson/conversations/model/ModelCache;->cacheMessageSlideshow(Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;)V

    .line 2307
    new-instance v0, Lcom/android/mms/transaction/MmsMessageSender;

    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Message;->getRawPriority()I

    move-result v5

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;JI)V

    .line 2309
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->prepareForSendMessage()Landroid/net/Uri;

    move-result-object v8

    .line 2310
    .local v8, "messageUri":Landroid/net/Uri;
    if-eqz v8, :cond_2

    .line 2313
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    neg-long v1, v1

    iput-wide v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 2316
    :cond_2
    return-object v0
.end method

.method private prepareSendingComposedSms(Lcom/sonyericsson/conversations/model/Message;J)Lcom/android/mms/transaction/MessageSender;
    .locals 12
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;
    .param p2, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 2322
    const/4 v0, 0x0

    .local v0, "sender":Lcom/android/mms/transaction/MessageSender;
    move-object v11, p1

    .line 2324
    check-cast v11, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 2325
    .local v11, "smsMessage":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v1

    invoke-virtual {v11, v1}, Lcom/sonyericsson/conversations/model/Message;->setPriority(I)V

    .line 2327
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v10

    .line 2328
    .local v10, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 2329
    .local v9, "nrDests":I
    new-array v2, v9, [Ljava/lang/String;

    .line 2331
    .local v2, "dests":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v9, :cond_0

    .line 2332
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    .line 2331
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2335
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    .end local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v3, v11, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/SmsMessage;->getRawPriority()I

    move-result v6

    move-wide v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2337
    .restart local v0    # "sender":Lcom/android/mms/transaction/MessageSender;
    invoke-interface {v0}, Lcom/android/mms/transaction/MessageSender;->prepareForSendMessage()Landroid/net/Uri;

    move-result-object v8

    .line 2338
    .local v8, "messageUri":Landroid/net/Uri;
    if-eqz v8, :cond_1

    .line 2339
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 2342
    :cond_1
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/Message;->isStored()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2348
    invoke-virtual {v11}, Lcom/sonyericsson/conversations/model/Message;->delete()V

    .line 2351
    :cond_2
    return-object v0
.end method

.method private reStartSelfIfNeed(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v3, 0x4000000

    .line 514
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MAIN"

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-nez v1, :cond_0

    .line 517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 518
    .local v0, "newIntent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    or-int/2addr v1, v3

    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 520
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 521
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 522
    const/4 v1, 0x1

    .line 524
    .end local v0    # "newIntent":Landroid/content/Intent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshEditorViews(Z)V
    .locals 2
    .param p1, "messageAdded"    # Z

    .prologue
    .line 2237
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$12;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2274
    return-void
.end method

.method private refreshMsgList(Z)V
    .locals 2
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 2223
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2224
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$11;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2234
    :cond_1
    return-void
.end method

.method private removeDialogFragment()V
    .locals 3

    .prologue
    .line 774
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "alert-dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/app/DialogFragment;

    .line 776
    .local v0, "dlgFragment":Landroid/app/DialogFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 777
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 779
    :cond_0
    return-void
.end method

.method private saveStatusForRestore()V
    .locals 4

    .prologue
    .line 528
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Z)J

    move-result-wide v1

    .line 531
    .local v1, "threadId":J
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 532
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "ThreadId"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 533
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v3, v0}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 534
    return-void
.end method

.method private sendMessage(I)V
    .locals 3
    .param p1, "validRecipientsSize"    # I

    .prologue
    .line 2381
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 2384
    const-string v0, ""

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 2385
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateConversationBeforeSendMessage()V

    .line 2387
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage()V

    .line 2389
    :cond_0
    return-void
.end method

.method private sendMessageUseInputNumber(Z)V
    .locals 4
    .param p1, "isInputNumber"    # Z

    .prologue
    .line 2416
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v2

    .line 2417
    .local v2, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2418
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 2419
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/model/Participant;->setIsInputNumber(Z)V

    goto :goto_0

    .line 2422
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    return-void
.end method

.method private setupEditorFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2666
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2667
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2670
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->hasValidRecipients()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2671
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2675
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 2691
    :cond_2
    :goto_0
    return-void

    .line 2676
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2679
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    goto :goto_0

    .line 2683
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v0, :cond_5

    .line 2684
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 2689
    :cond_5
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIntentData:Lcom/sonyericsson/conversations/ui/persist/IntentData;

    goto :goto_0
.end method

.method private setupMsgListFragment()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2641
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v0, :cond_0

    .line 2643
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 2661
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 2662
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 2663
    return-void

    .line 2644
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2651
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/model/Conversation;Z)V

    .line 2652
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    goto :goto_0

    .line 2654
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 2655
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 2656
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/model/Conversation;Z)V

    goto :goto_0
.end method

.method private setupToFieldFragment()V
    .locals 4

    .prologue
    .line 2696
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2697
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->resetToField()V

    .line 2700
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 2707
    :cond_1
    :goto_0
    return-void

    .line 2703
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2705
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    goto :goto_0
.end method

.method private showExternalSendErrorToast(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 2592
    const/4 v0, 0x0

    .line 2593
    .local v0, "messageId":I
    packed-switch p1, :pswitch_data_0

    .line 2633
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2595
    :pswitch_1
    const v0, 0x7f07006b

    .line 2630
    :goto_1
    if-eqz v0, :cond_0

    .line 2631
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToastInUiThread(II)V

    goto :goto_0

    .line 2599
    :pswitch_2
    const v0, 0x7f070067

    .line 2600
    goto :goto_1

    .line 2603
    :pswitch_3
    const v0, 0x7f070068

    .line 2604
    goto :goto_1

    .line 2607
    :pswitch_4
    const v0, 0x7f07006c

    .line 2608
    goto :goto_1

    .line 2614
    :pswitch_5
    const v0, 0x7f0700d9

    .line 2615
    goto :goto_1

    .line 2618
    :pswitch_6
    const v0, 0x7f0700da

    .line 2619
    goto :goto_1

    .line 2622
    :pswitch_7
    const v0, 0x7f0700c3

    .line 2623
    goto :goto_1

    .line 2593
    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private updateComposerFromSendIntentData(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 8
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 1326
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v6, :cond_1

    .line 1367
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->determineSendIntentDataType(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)I

    move-result v3

    .line 1332
    .local v3, "sendIntentType":I
    packed-switch v3, :pswitch_data_0

    .line 1348
    iget-object v4, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->body:Ljava/lang/String;

    .line 1350
    .local v4, "text":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1351
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6, v4}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    .line 1354
    :cond_2
    iget-object v5, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentType:Ljava/lang/String;

    .line 1355
    .local v5, "type":Ljava/lang/String;
    iget-object v0, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->contentUris:Ljava/util/ArrayList;

    .line 1357
    .local v0, "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1358
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1359
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentContentUri(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0

    .line 1335
    .end local v0    # "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .end local v4    # "text":Ljava/lang/String;
    .end local v5    # "type":Ljava/lang/String;
    :pswitch_0
    iget-object v1, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->forwardedMessageUri:Landroid/net/Uri;

    .line 1336
    .local v1, "forwardUri":Landroid/net/Uri;
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMessageUri(Landroid/net/Uri;)V

    .line 1337
    invoke-direct {p0, v3, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageSubject(ILandroid/net/Uri;)V

    goto :goto_0

    .line 1341
    .end local v1    # "forwardUri":Landroid/net/Uri;
    :pswitch_1
    iget-object v2, p1, Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;->replyAllMessageUri:Landroid/net/Uri;

    .line 1342
    .local v2, "replyAllUri":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendIntentMessageUri(Landroid/net/Uri;)V

    .line 1343
    invoke-direct {p0, v3, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageSubject(ILandroid/net/Uri;)V

    .line 1344
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMedia()V

    .line 1345
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const-string v7, ""

    invoke-virtual {v6, v7}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    .end local v2    # "replyAllUri":Landroid/net/Uri;
    .restart local v0    # "contentUris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    .restart local v4    # "text":Ljava/lang/String;
    .restart local v5    # "type":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleSendMultipleIntentContentUris(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1332
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateMessageByRecipient(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Message;
    .locals 6
    .param p1, "oldMessage"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 1896
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveValidRecipients()V

    .line 1898
    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 1900
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(Landroid/content/Context;Ljava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 1903
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    .line 1904
    .local v0, "newMessage":Lcom/sonyericsson/conversations/model/Message;
    if-nez v0, :cond_1

    move-object v1, p1

    .line 1905
    .local v1, "updatedMessage":Lcom/sonyericsson/conversations/model/Message;
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/model/Message;->setPriority(I)V

    .line 1907
    return-object v1

    .end local v1    # "updatedMessage":Lcom/sonyericsson/conversations/model/Message;
    :cond_1
    move-object v1, v0

    .line 1904
    goto :goto_0
.end method

.method private updateMessageSubject(ILandroid/net/Uri;)V
    .locals 7
    .param p1, "sendIntentType"    # I
    .param p2, "messageUri"    # Landroid/net/Uri;

    .prologue
    .line 1401
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v5, p2}, Lcom/sonyericsson/conversations/model/Message;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 1402
    .local v2, "msg":Lcom/sonyericsson/conversations/model/Message;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    .line 1405
    .local v1, "loadedMessage":Lcom/sonyericsson/conversations/model/Message;
    instance-of v5, v1, Lcom/sonyericsson/conversations/model/MmsMessage;

    if-nez v5, :cond_0

    .line 1438
    .end local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :goto_0
    return-void

    .line 1410
    .restart local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    :cond_0
    const-string v3, ""

    .line 1411
    .local v3, "originalSubject":Ljava/lang/String;
    const-string v0, ""

    .line 1413
    .local v0, "finalSubject":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1414
    check-cast v2, Lcom/sonyericsson/conversations/model/MmsMessage;

    .end local v2    # "msg":Lcom/sonyericsson/conversations/model/Message;
    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/MmsMessage;->getSubject()Ljava/lang/String;

    move-result-object v3

    .line 1426
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1428
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->messageSubjectPrefixForType(I)Ljava/lang/String;

    move-result-object v4

    .line 1429
    .local v4, "prefix":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1430
    move-object v0, v3

    .line 1436
    .end local v4    # "prefix":Ljava/lang/String;
    :cond_3
    :goto_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/MmsMessage;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/sonyericsson/conversations/model/MmsMessage;->setSubject(Ljava/lang/String;Z)V

    .line 1437
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5, v0}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    goto :goto_0

    .line 1432
    .restart local v4    # "prefix":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public checkRecipientAndSend()V
    .locals 18

    .prologue
    .line 2076
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2078
    const v2, 0x7f070008

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 2080
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 2125
    :goto_0
    return-void

    .line 2084
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage()V

    goto :goto_0

    .line 2088
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->checkRecipientsStatus()I

    move-result v17

    .line 2089
    .local v17, "recipientStatus":I
    packed-switch v17, :pswitch_data_0

    goto :goto_0

    .line 2091
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->sendMessage(I)V

    goto :goto_0

    .line 2096
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v3, 0x7f070132

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080027

    const v5, 0x1010355

    const v6, 0x7f070133

    const v7, 0x104000a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0

    .line 2105
    :pswitch_2
    new-instance v8, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$9;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;I)V

    .line 2112
    .local v8, "positiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v4, 0x7f07012f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080027

    const v5, 0x1010355

    const v6, 0x7f070130

    const v7, 0x7f0700e1

    const v9, 0x7f0700e2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v16}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto/16 :goto_0

    .line 2089
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkRecipientsStatus()I
    .locals 2

    .prologue
    .line 1237
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1238
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->hasValidRecipient()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1240
    const/4 v1, 0x2

    .line 1253
    :goto_0
    return v1

    .line 1245
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    .line 1246
    .local v0, "invalidAddrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1248
    const/4 v1, 0x1

    goto :goto_0

    .line 1253
    .end local v0    # "invalidAddrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected collapseRecipientsList()V
    .locals 0

    .prologue
    .line 2723
    return-void
.end method

.method public convertToMessageType(I)V
    .locals 2
    .param p1, "messageType"    # I

    .prologue
    const/4 v1, 0x1

    .line 1775
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v0, :cond_0

    .line 1787
    :goto_0
    return-void

    .line 1778
    :cond_0
    if-eq p1, v1, :cond_1

    .line 1779
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->deleteAllMedia()V

    .line 1782
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V

    .line 1784
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 1786
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->loadNextDraftIfComposerEmpty()V

    goto :goto_0
.end method

.method protected abstract createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end method

.method protected abstract createEditorFragment(Lcom/sonyericsson/conversations/ui/Composer;)Lcom/sonyericsson/conversations/ui/EditorFragment;
.end method

.method protected discardWriteNew()V
    .locals 1

    .prologue
    .line 591
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->discardDraftMessages()V

    .line 593
    return-void
.end method

.method public declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 2585
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2586
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2588
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2589
    monitor-exit p0

    return-void

    .line 2585
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected expandRecipientsList()V
    .locals 0

    .prologue
    .line 2720
    return-void
.end method

.method protected getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    return-object v0
.end method

.method public getAllInputRecipientCount()I
    .locals 1

    .prologue
    .line 1282
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getAllInputRecipientCount()I

    move-result v0

    .line 1285
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getComposer()Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    return-object v0
.end method

.method public getConvListFragmentForTest()Lcom/sonyericsson/conversations/ui/ConversationListFragment;
    .locals 1

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    return-object v0
.end method

.method public getInvalidRecipients()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    .line 1275
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getInvalidRecipients()Ljava/util/ArrayList;

    move-result-object v0

    .line 1277
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMsgListFragmentForTest()Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .locals 1

    .prologue
    .line 2727
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    return-object v0
.end method

.method public hideInputMethod(Z)V
    .locals 4
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 2554
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2557
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2558
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2559
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2560
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2564
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public hideInputMethodandClearTextFocus(Z)V
    .locals 2
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 2567
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 2568
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2569
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2570
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2572
    :cond_0
    return-void
.end method

.method public initActionBar()V
    .locals 1

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->initActionBar()V

    .line 1178
    :cond_0
    return-void
.end method

.method protected initConversation(Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V
    .locals 2
    .param p1, "sendIntentData"    # Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;

    .prologue
    .line 978
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 982
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 983
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Landroid/content/Context;Lcom/sonyericsson/conversations/ui/persist/IntentData$SendIntentData;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    .line 985
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mInitConversationTask:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$InitConversationTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 987
    :cond_1
    return-void
.end method

.method public isConvListContentAreaVisible()Z
    .locals 1

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMsgListContentAreaVisible()Z
    .locals 1

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMsgListFragmentFocusedOnLastItem()Z
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1297
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->isFocusedOnLastItem()Z

    move-result v0

    .line 1299
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMsgListFragmentVisible()Z
    .locals 1

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchBoxVisible()Z
    .locals 1

    .prologue
    .line 2736
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 2737
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    .line 2739
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isToFieldFragmentVisible()Z
    .locals 1

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionBarHomePressed()V
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v8, 0x0

    .line 1201
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackDisabled:Z

    if-nez v0, :cond_1

    .line 1202
    invoke-virtual {p0, v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 1204
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSaveDraftDialogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1207
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->backToMainActivity()V

    .line 1234
    :cond_1
    :goto_0
    return-void

    .line 1210
    :cond_2
    new-instance v6, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;

    invoke-direct {v6, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$6;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 1217
    .local v6, "savePositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v10, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;

    invoke-direct {v10, p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$7;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V

    .line 1224
    .local v10, "saveNeutralClickListener":Landroid/content/DialogInterface$OnClickListener;
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f070073

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x1080027

    const v3, 0x1010355

    const v4, 0x7f070072

    const v5, 0x7f070074

    const v7, 0x7f070076

    const v9, 0x7f070075

    move-object v0, p0

    move-object v11, v8

    move-object v12, v8

    move-object v13, v8

    invoke-virtual/range {v0 .. v14}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1185
    const/4 v0, 0x0

    return v0
.end method

.method public onCloseSearchModeInConversationList()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method public onCloseSearchModeInMessageList()V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2636
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 2637
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 2638
    return-void
.end method

.method public onConvListLoadFinished()V
    .locals 0

    .prologue
    .line 634
    return-void
.end method

.method public onConversationDeleted()V
    .locals 0

    .prologue
    .line 2502
    return-void
.end method

.method public onConversationOpen(J)V
    .locals 2
    .param p1, "threadId"    # J

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getSearchString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 588
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 462
    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->reStartSelfIfNeed(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 484
    :cond_1
    :goto_0
    return-void

    .line 473
    :cond_2
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleIntent(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f030006

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 479
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    .line 482
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const v1, 0x7f0a000d

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    goto :goto_0
.end method

.method public onCurrentConversationDeleted(J)V
    .locals 0
    .param p1, "threadId"    # J

    .prologue
    .line 646
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 548
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v0, :cond_0

    .line 549
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 550
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveStatusForRestore()V

    .line 556
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageReadIndicators(JZ)V

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    if-eqz v0, :cond_2

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;->setKeyboardVisibilityListener(Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout$DisplayHeightChangeListener;)V

    .line 565
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 566
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListContentArea:Lcom/sonyericsson/conversations/ui/ConversationMainViewLayout;

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 571
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    .line 574
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/ConversationsApp;->getLowMemoryManager()Lcom/sonyericsson/conversations/memory/LowMemoryManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/memory/LowMemoryManager;->unregister(Lcom/sonyericsson/conversations/memory/LowMemoryListener;)V

    .line 575
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->cancelAllTasks()V

    .line 576
    return-void

    .line 552
    :cond_4
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft()V

    goto :goto_0
.end method

.method public onEndSearchMode()V
    .locals 1

    .prologue
    .line 678
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 681
    :cond_0
    return-void
.end method

.method public onFinishDeleteConversationsActionMode(Z)V
    .locals 0
    .param p1, "isDeleteTaskTriggered"    # Z

    .prologue
    .line 641
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 642
    return-void
.end method

.method public onFinishDeleteMessagesActionMode()V
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->hasValidRecipients()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 693
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateActionBar()V

    .line 694
    return-void

    .line 690
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    goto :goto_0
.end method

.method public onMsgListLoadFinished()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 702
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    if-eqz v0, :cond_1

    .line 704
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mWaitingForAddedMessage:Z

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 707
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->prepareSendAnimation()V

    .line 708
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setSendingMessageKey(J)V

    .line 709
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendingMessageKey:J

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mSendLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 713
    :cond_1
    monitor-exit v1

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 433
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 435
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onEndSearchMode()V

    .line 438
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->finishUpToFieldFragment()V

    .line 442
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Z)J

    .line 445
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeFragments()V

    .line 446
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissSaveContactDialog()V

    .line 448
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->collapseRecipientsList()V

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->handleIntent(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    :cond_2
    return-void
.end method

.method public onOpenSearchMode(Ljava/lang/String;)V
    .locals 2
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft()V

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->setInSearchMode(ZLjava/lang/String;)V

    .line 670
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->changeToSearchMode(Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 496
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 497
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    if-nez v0, :cond_1

    .line 499
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftAsync(Z)J

    .line 502
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    .line 506
    :cond_2
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mBackKeyPressed:Z

    .line 507
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 508
    return-void
.end method

.method public onQueryTextSubmit()V
    .locals 0

    .prologue
    .line 684
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->refresh()V

    .line 490
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsResumed:Z

    .line 491
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 882
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 883
    const-string v0, "ThreadId"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 885
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 784
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListContentArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->onSearchRequested()Z

    move-result v0

    .line 788
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSearchViewExpand()V
    .locals 2

    .prologue
    .line 656
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateSearchMode()V

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    .line 661
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setMenuVisibleFlag(Z)V

    .line 663
    :cond_1
    return-void
.end method

.method public onStartDeleteConversation()V
    .locals 0

    .prologue
    .line 698
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->deleteConversation()V

    .line 699
    return-void
.end method

.method public onStartDeleteConversations()V
    .locals 1

    .prologue
    .line 637
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 638
    return-void
.end method

.method public onStartDeleteSeveralMessages()V
    .locals 1

    .prologue
    .line 650
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 652
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->hideInputMethod(Z)V

    .line 653
    return-void
.end method

.method public onTrimMemory(Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;)V
    .locals 2
    .param p1, "level"    # Lcom/sonyericsson/conversations/memory/LowMemoryManager$OnTrimMemoryLevel;

    .prologue
    .line 2743
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$15;->$SwitchMap$com$sonyericsson$conversations$memory$LowMemoryManager$OnTrimMemoryLevel:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2750
    :cond_0
    :goto_0
    return-void

    .line 2745
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2746
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setDirty(Z)V

    .line 2747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraftSync(Z)J

    goto :goto_0

    .line 2743
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected removeFragments()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 758
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setConvListFragmentVisibility(Z)V

    .line 759
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setEditorFragmentVisibility(Z)V

    .line 760
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setToFieldFragmentVisibility(Z)V

    .line 761
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListFragmentVisibility(Z)V

    .line 762
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->removeDialogFragment()V

    .line 763
    return-void
.end method

.method public saveDraft(ZZ)J
    .locals 11
    .param p1, "popupToast"    # Z
    .param p2, "isAsync"    # Z

    .prologue
    const-wide/16 v9, -0x1

    .line 1957
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-wide v9

    .line 1964
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isDefaultSmsPackage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1971
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v7

    .line 1972
    .local v7, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    invoke-virtual {v7}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v9

    .line 1975
    .local v9, "threadId":J
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v1, v9, v10}, Lcom/sonyericsson/conversations/model/Conversation;->threadExists(Landroid/content/Context;J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1976
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->resetConversation()V

    .line 1979
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSaveDraftMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v8

    .line 1980
    .local v8, "originalMessage":Lcom/sonyericsson/conversations/model/Message;
    if-nez v8, :cond_3

    .line 1985
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->resetConversation()V

    .line 1987
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 1988
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    goto :goto_0

    .line 1998
    :cond_3
    invoke-direct {p0, v8}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->updateMessageByRecipient(Lcom/sonyericsson/conversations/model/Message;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    .line 2001
    .local v2, "updatedMessage":Lcom/sonyericsson/conversations/model/Message;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v9

    .line 2004
    new-instance v0, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getSubject()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->isRecipientsDirty()Z

    move-result v5

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Message;Lcom/sonyericsson/conversations/model/Conversation;Ljava/lang/String;ZZ)V

    .line 2006
    .local v0, "draft":Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->registerMessagePersistListener(Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager$MessagePersistListener;)V

    .line 2008
    if-eqz p2, :cond_4

    .line 2009
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->pushSaveDraftTask(Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;)V

    .line 2014
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->clear()V

    goto :goto_0

    .line 2011
    :cond_4
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->syncSaveDraft(Lcom/sonyericsson/conversations/ui/persist/SaveDraftTask;)V

    goto :goto_1
.end method

.method public abstract saveDraft()V
.end method

.method public saveDraftAsync(Z)J
    .locals 2
    .param p1, "popupToast"    # Z

    .prologue
    .line 1935
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveDraftSync(Z)J
    .locals 2
    .param p1, "popupToast"    # Z

    .prologue
    .line 1945
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveDraft(ZZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveValidRecipients()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    .line 2027
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v9, :cond_1

    .line 2073
    :cond_0
    :goto_0
    return-void

    .line 2030
    :cond_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v9}, Landroid/app/Fragment;->isAdded()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2031
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->getValidRecipients()Ljava/util/ArrayList;

    move-result-object v1

    .line 2035
    .local v1, "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_3

    const/4 v3, 0x1

    .line 2038
    .local v3, "needUpate":Z
    :goto_1
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->isRecipientDirty()Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v3, :cond_0

    .line 2039
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2040
    .local v7, "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v1, :cond_4

    .line 2041
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2042
    .local v0, "address":Ljava/lang/String;
    new-instance v6, Lcom/sonyericsson/conversations/model/Participant;

    invoke-direct {v6, v0}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 2043
    .local v6, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2035
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "needUpate":Z
    .end local v6    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2048
    .restart local v3    # "needUpate":Z
    .restart local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_4
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-static {v11, v12, v7}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    goto :goto_0

    .line 2055
    .end local v1    # "addressList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "needUpate":Z
    .end local v7    # "participantList":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    :cond_5
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    .line 2056
    .local v4, "originParticipants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2057
    .local v8, "validParticipants":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    if-eqz v4, :cond_0

    .line 2059
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    .line 2060
    .local v5, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonyericsson/conversations/util/AddressUtil;->isValidAddress(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2061
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2066
    .end local v5    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 2068
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-static {v11, v12, v8}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/conversations/ui/Composer;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    goto/16 :goto_0
.end method

.method protected sendMessage()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->isInSearchMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->isSearchBoxVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2130
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->onEndSearchMode()V

    .line 2133
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2135
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 2136
    const v0, 0x7f070008

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->showToast(II)V

    .line 2138
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mIsSending:Z

    .line 2220
    :goto_0
    return-void

    .line 2143
    :cond_2
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mStopDraftSavingFlag:Z

    .line 2149
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/persist/MessagePersistManager;->onExternalTaskStart()V

    .line 2150
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSendButtonProgressBar()V

    .line 2152
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->dismissProgressDialog()V

    .line 2153
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setMsgListUpdateNecessity(Z)V

    .line 2155
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;

    const-string v1, "Send message"

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$10;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method protected setConvListFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const v3, 0x7f0a000e

    .line 897
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 902
    :cond_0
    if-eqz p1, :cond_3

    .line 903
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-nez v2, :cond_1

    .line 904
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createConversationListFragment()Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .line 906
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2, p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->setCallback(Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationListFragmentCallback;)V

    .line 907
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    .line 908
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 909
    .local v1, "transaction":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 910
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 920
    .end local v1    # "transaction":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_0
    return-void

    .line 912
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v2}, Landroid/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 913
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 914
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 915
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 917
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 918
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mConvListFragment:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    goto :goto_0
.end method

.method protected setEditorFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1644
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v1, :cond_0

    .line 1645
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "bottom_fragment_editor"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 1649
    :cond_0
    if-eqz p1, :cond_3

    .line 1650
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-nez v1, :cond_1

    .line 1651
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->createEditorFragment(Lcom/sonyericsson/conversations/ui/Composer;)Lcom/sonyericsson/conversations/ui/EditorFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    .line 1652
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragmentCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setCallback(Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;)V

    .line 1654
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_1

    .line 1655
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;->setContentListener(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;)V

    .line 1659
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1660
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1661
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const v1, 0x7f0a0017

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const-string v3, "bottom_fragment_editor"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 1663
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1677
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_0
    return-void

    .line 1665
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1666
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideInputMethod(Z)V

    .line 1667
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1668
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1669
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1671
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1674
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setCallback(Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;)V

    .line 1675
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    goto :goto_0
.end method

.method protected setMsgListFragmentVisibility(Z)V
    .locals 6
    .param p1, "isShow"    # Z

    .prologue
    const v5, 0x7f0a0011

    .line 925
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v3, :cond_0

    .line 926
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 930
    :cond_0
    if-eqz p1, :cond_4

    .line 931
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-nez v3, :cond_3

    .line 932
    new-instance v3, Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-direct {v3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;-><init>()V

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .line 934
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 935
    .local v0, "args":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    .line 936
    const-string v3, "focusmessageuri"

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    :cond_1
    const-string v3, "conversation"

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 940
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 941
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setCallback(Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;)V

    .line 945
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 950
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_2

    .line 951
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 952
    .local v2, "transaction":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v2, v5, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 953
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 963
    .end local v2    # "transaction":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_1
    return-void

    .line 943
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFocusMessageUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    goto :goto_0

    .line 955
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 956
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 957
    .local v1, "ft":Landroid/app/FragmentTransaction;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 958
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 960
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v3}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 961
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    goto :goto_1
.end method

.method public setMsgListUpdateNecessity(Z)V
    .locals 1
    .param p1, "isNeed"    # Z

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setUpdateFocus(Z)V

    .line 1293
    :cond_0
    return-void
.end method

.method protected setToFieldFragmentVisibility(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const v3, 0x7f0a0010

    .line 1688
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-nez v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 1693
    :cond_0
    if-eqz p1, :cond_3

    .line 1694
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-nez v1, :cond_1

    .line 1695
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mRecipientEditorPanelListener:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;-><init>(Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorPanelListener;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    .line 1698
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1700
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1701
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1713
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    :goto_0
    return-void

    .line 1703
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1704
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 1705
    .restart local v0    # "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1706
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 1710
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1711
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mToFieldFragment:Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment;

    goto :goto_0
.end method

.method protected setupFragments()V
    .locals 1

    .prologue
    .line 2711
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2713
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupToFieldFragment()V

    .line 2714
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupMsgListFragment()V

    .line 2715
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->setupEditorFragment()V

    .line 2717
    :cond_0
    return-void
.end method

.method public showDialog(Ljava/lang/String;IIIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 13
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "iconAttribute"    # I
    .param p4, "messageId"    # I
    .param p5, "positiveBtnResId"    # I
    .param p6, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "negativeBtnResId"    # I
    .param p8, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p9, "neutralBtnResId"    # I
    .param p10, "neutralButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p11, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p12, "adapter"    # Landroid/widget/ListAdapter;
    .param p13, "adpterListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p14, "bCancelable"    # Z

    .prologue
    .line 2535
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mFragmentManager:Landroid/app/FragmentManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v2, p5

    move-object/from16 v3, p6

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-object v10, p1

    move v11, p2

    move/from16 v12, p3

    invoke-static/range {v1 .. v12}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;II)V

    .line 2540
    return-void
.end method

.method public declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 2575
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2579
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2580
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2582
    :cond_1
    monitor-exit p0

    return-void

    .line 2575
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected showToast(II)V
    .locals 1
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2514
    return-void
.end method

.method protected showToast(Ljava/lang/String;I)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    .line 2517
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-static {v0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2518
    return-void
.end method

.method protected showToastInUiThread(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 2505
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$14;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2510
    return-void
.end method

.method public updateActionBar()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActionBarController:Lcom/sonyericsson/conversations/ui/controller/ActionBarController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/controller/ActionBarController;->updateActionBar()V

    .line 1172
    :cond_0
    return-void
.end method

.method public updateComposerFromDraftStack(Z)V
    .locals 3
    .param p1, "forceLoadDraft"    # Z

    .prologue
    .line 1624
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1626
    if-nez p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isDirty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1627
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->loadDraft()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :cond_1
    :goto_0
    return-void

    .line 1629
    :catch_0
    move-exception v0

    .line 1630
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v1, "ConversationActivityUiController"

    const-string v2, "updateComposerFromDraftStack: loadDraft() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public updateConversationBeforeSendMessage()V
    .locals 1

    .prologue
    .line 2392
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->saveValidRecipients()V

    .line 2403
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getComposer()Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isActionbarHideWhenKeypadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2404
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 2406
    :cond_0
    return-void
.end method

.method public updateEditorFragment()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1911
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    if-eqz v2, :cond_0

    .line 1912
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 1913
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 1914
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1916
    .local v0, "isInLandscape":Z
    :goto_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mEditorFragment:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestKeyboardFocus()V

    .line 1920
    .end local v0    # "isInLandscape":Z
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1914
    goto :goto_0
.end method

.method protected updateMessageReadIndicators(JZ)V
    .locals 6
    .param p1, "updateThreadId"    # J
    .param p3, "updateOnlyOutgoing"    # Z

    .prologue
    .line 1797
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mActivity:Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    if-nez v0, :cond_1

    .line 1848
    :cond_0
    :goto_0
    return-void

    .line 1801
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;

    const-string v2, "updateMessageReadIndicators"

    move-object v1, p0

    move-wide v3, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$8;-><init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;Ljava/lang/String;JZ)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public updateMsgListFragment()V
    .locals 3

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mMsgListFragment:Lcom/sonyericsson/conversations/ui/MessageListFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->update(Lcom/sonyericsson/conversations/model/Conversation;Z)V

    .line 1924
    return-void
.end method
