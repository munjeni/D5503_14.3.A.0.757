.class public Lcom/sonyericsson/conversations/ui/MessageListFragment;
.super Landroid/app/ListFragment;
.source "MessageListFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;,
        Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;
    }
.end annotation


# static fields
.field public static final EXTRA_CONVERSATION:Ljava/lang/String; = "conversation"

.field public static final EXTRA_URI:Ljava/lang/String; = "focusmessageuri"

.field private static final FOOTER_ITEM_COUNT:I = 0x1

.field private static final INSTANCE_FOCUSED_INDEX:Ljava/lang/String; = "FocusedIndex"

.field private static final INSTANCE_FOCUSED_URI:Ljava/lang/String; = "FocusedUri"

.field private static final INSTANCE_THREAD_ID:Ljava/lang/String; = "ThreadId"

.field private static final INVALIDATE_DELAY_MS:J = 0x1f4L

.field static final MENU_COPY_SMS_TO_SIM_CARD:I = 0x6a

.field static final MENU_DELETE:I = 0x67

.field static final MENU_DOWNLOAD:I = 0x65

.field static final MENU_FORWARD:I = 0x66

.field static final MENU_MESSAGE_LIST_MAX_ID:I = 0xc7

.field static final MENU_MESSAGE_LIST_MINI_ID:I = 0x64

.field static final MENU_PLAY_SLIDESHOW:I = 0x68

.field static final MENU_REPLY_ALL:I = 0x6b

.field static final MENU_RESEND:I = 0x64

.field static final MENU_STAR_MESSAGE:I = 0x6d

.field static final MENU_TEXT_COPY:I = 0x69

.field static final MENU_VIEW_MESSAGE_DETAILS:I = 0x6e

.field static final MENU_VIEW_RECIPIENTS:I = 0x6c

.field private static final TAG:Ljava/lang/String; = "MessageListFragment"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

.field private mClosedByUser:Z

.field private mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

.field private mContextMenu:Landroid/view/ContextMenu;

.field private mContextMenuForTest:Landroid/view/ContextMenu;

.field private mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

.field private mConversation:Lcom/sonyericsson/conversations/model/Conversation;

.field private mCountedViews:I

.field private mDeleteConversationMenuItem:Landroid/view/MenuItem;

.field private mDeleteSeveralMenuItem:Landroid/view/MenuItem;

.field mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

.field private mFocusedMessageUri:Landroid/net/Uri;

.field private mFooterView:Landroid/widget/FrameLayout;

.field private final mHandler:Landroid/os/Handler;

.field private mHighlightPattern:Ljava/util/regex/Pattern;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsMenuVisible:Z

.field mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListContentHeight:I

.field private mListContentHeightLock:Ljava/lang/Object;

.field private mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

.field private mMessageListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

.field private mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

.field mMsgListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

.field private mMultiSelectionMode:Landroid/view/ActionMode;

.field private mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

.field private mNeedToUpdateFocus:Z

.field private mOldThreadId:J

.field private mPd:Landroid/app/ProgressDialog;

.field private mShowDeleteProgressDlg:Ljava/lang/Runnable;

.field private final mShowOpenProgressDlg:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 162
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 172
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    .line 174
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 176
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 178
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsMenuVisible:Z

    .line 180
    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z

    .line 182
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 192
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    .line 194
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 196
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 198
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 200
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mOldThreadId:J

    .line 202
    iput v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mListContentHeight:I

    .line 203
    iput v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCountedViews:I

    .line 204
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mListContentHeightLock:Ljava/lang/Object;

    .line 206
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFooterView:Landroid/widget/FrameLayout;

    .line 209
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 211
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    .line 224
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    .line 231
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    .line 399
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 1204
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$12;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMsgListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    .line 1348
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$13;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/MessageListModel;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFooterView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Landroid/view/ActionMode;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MarkModeCallBack;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/conversations/ui/MessageListFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMessageListMarkableMode(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showProgressDlg()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p1, "x1"    # I

    .prologue
    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setListViewSelection(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/MessageListFragment;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showProgressDialog(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageBubbleView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/model/Conversation;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/MessageListFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/MessageListFragment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method private createAndAddFooterView()V
    .locals 4

    .prologue
    .line 332
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 333
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f030009

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFooterView:Landroid/widget/FrameLayout;

    .line 334
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFooterView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 335
    return-void
.end method

.method private deleteMessage()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v0, 0x0

    .line 547
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/conversations/model/Message;->starStatus:I

    if-ne v1, v11, :cond_0

    .line 548
    .local v11, "isStarred":Z
    :goto_0
    new-instance v10, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v10, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 549
    .local v10, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v7, 0x0

    .line 550
    .local v7, "checkBoxTextResId":I
    const/4 v8, 0x0

    .line 551
    .local v8, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    const/4 v9, 0x0

    .line 553
    .local v9, "confirmMessage":I
    if-eqz v11, :cond_1

    .line 554
    const v9, 0x7f070178

    .line 555
    const v7, 0x7f070177

    .line 556
    new-instance v8, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;

    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {v8, p0, v10}, Lcom/sonyericsson/conversations/ui/MessageListFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 565
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    :goto_1
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;

    invoke-direct {v2, p0, v10}, Lcom/sonyericsson/conversations/ui/MessageListFragment$6;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 582
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v5, v4

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 585
    return-void

    .end local v2    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "checkBoxTextResId":I
    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v9    # "confirmMessage":I
    .end local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v11    # "isStarred":Z
    :cond_0
    move v11, v0

    .line 547
    goto :goto_0

    .line 563
    .restart local v7    # "checkBoxTextResId":I
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .restart local v9    # "confirmMessage":I
    .restart local v10    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    .restart local v11    # "isStarred":Z
    :cond_1
    const v9, 0x7f070039

    goto :goto_1
.end method

.method private dismissOpenProgressDlgDelayed()V
    .locals 2

    .prologue
    .line 1019
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1020
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->dismissProgressDialog()V

    .line 1021
    return-void
.end method

.method private dismissProgressDialog()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1038
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1040
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 1041
    return-void
.end method

.method private formatViewRecipientsDialogMessage(Landroid/net/Uri;)Ljava/lang/String;
    .locals 13
    .param p1, "msgUri"    # Landroid/net/Uri;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 628
    const-string v2, ""

    .line 629
    .local v2, "info":Ljava/lang/String;
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, p1}, Lcom/sonyericsson/conversations/model/MmsMessage;->fromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/sonyericsson/conversations/model/MmsMessage;

    move-result-object v3

    .line 630
    .local v3, "msg":Lcom/sonyericsson/conversations/model/MmsMessage;
    if-eqz v3, :cond_0

    .line 631
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MmsMessage;->fetchParticipantsInfo()Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;

    move-result-object v5

    .line 633
    .local v5, "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070125

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 636
    .local v6, "to":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getToRecipients()Ljava/util/ArrayList;

    move-result-object v4

    .line 637
    .local v4, "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v7

    .line 640
    .local v7, "toRecipients":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070126

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 642
    .local v0, "cc":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;->getCcRecipients()Ljava/util/ArrayList;

    move-result-object v4

    .line 643
    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v8, v4}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->formatList(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 646
    .local v1, "ccRecipients":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 647
    const-string v8, "%s %s"

    new-array v9, v12, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v7, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 652
    .end local v0    # "cc":Ljava/lang/String;
    .end local v1    # "ccRecipients":Ljava/lang/String;
    .end local v4    # "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    .end local v5    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .end local v6    # "to":Ljava/lang/String;
    .end local v7    # "toRecipients":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 649
    .restart local v0    # "cc":Ljava/lang/String;
    .restart local v1    # "ccRecipients":Ljava/lang/String;
    .restart local v4    # "p":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/conversations/model/Participant;>;"
    .restart local v5    # "pi":Lcom/sonyericsson/conversations/model/MmsParticipantsInfo;
    .restart local v6    # "to":Ljava/lang/String;
    .restart local v7    # "toRecipients":Ljava/lang/String;
    :cond_1
    const-string v8, "%s %s\n%s %s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v6, v9, v10

    aput-object v7, v9, v11

    aput-object v0, v9, v12

    const/4 v10, 0x3

    aput-object v1, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 674
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 675
    .local v0, "listView":Landroid/widget/ListView;
    if-nez v0, :cond_0

    .line 707
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 682
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isBubbleAlignReverse()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 685
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setStackFromBottom(Z)V

    .line 688
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 691
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListScrollListener;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Lcom/sonyericsson/conversations/ui/MessageListFragment$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 693
    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$7;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Landroid/widget/ListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 706
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    goto :goto_0
.end method

.method private onPostDelete(I)V
    .locals 3
    .param p1, "deleteCount"    # I

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1367
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1368
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    .line 1369
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 1375
    if-lez p1, :cond_1

    .line 1376
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f07003d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1379
    :cond_1
    return-void
.end method

.method private onPreDelete()V
    .locals 4

    .prologue
    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1356
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowDeleteProgressDlg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1357
    return-void
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v5, -0x1

    .line 251
    if-eqz p1, :cond_0

    .line 252
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    const-string v3, "FocusedIndex"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedIndex(I)V

    .line 253
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    const-string v2, "FocusedUri"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 254
    const-string v2, "ThreadId"

    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 256
    .local v1, "threadId":Ljava/lang/Long;
    const/4 v0, 0x0

    .line 257
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, v5

    if-nez v2, :cond_1

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5, v6, v2}, Lcom/sonyericsson/conversations/model/Conversation;->fromParticipants(JLjava/util/List;)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 262
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v2, v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 264
    .end local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .end local v1    # "threadId":Ljava/lang/Long;
    :cond_0
    return-void

    .line 260
    .restart local v0    # "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    .restart local v1    # "threadId":Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/conversations/model/Conversation;->fromThreadId(Landroid/content/Context;J)Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    goto :goto_0
.end method

.method private prepareDeleteConversation()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    .line 1088
    new-instance v9, Landroid/util/SparseBooleanArray;

    invoke-direct {v9}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 1089
    .local v9, "allItemPositions":Landroid/util/SparseBooleanArray;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_0

    .line 1090
    const/4 v0, 0x1

    invoke-virtual {v9, v12, v0}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 1089
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1093
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, v9}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->checkAnyMessageStarred(Landroid/util/SparseBooleanArray;)Z

    move-result v13

    .line 1094
    .local v13, "isAnyStarred":Z
    const/4 v10, 0x0

    .line 1096
    .local v10, "confirmMessageResid":I
    if-eqz v13, :cond_1

    .line 1097
    const v10, 0x7f070178

    .line 1103
    const/4 v7, 0x0

    .line 1104
    .local v7, "checkBoxTextResId":I
    new-instance v11, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1105
    .local v11, "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v8, 0x0

    .line 1107
    .local v8, "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    const v7, 0x7f07017a

    .line 1108
    new-instance v8, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;

    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    invoke-direct {v8, p0, v11}, Lcom/sonyericsson/conversations/ui/MessageListFragment$10;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1115
    .restart local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;

    invoke-direct {v2, p0, v11, v9}, Lcom/sonyericsson/conversations/ui/MessageListFragment$11;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/util/SparseBooleanArray;)V

    .line 1138
    .local v2, "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0700dd

    const v3, 0x7f0700db

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object v5, v4

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1142
    .end local v2    # "deleteBtnListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v7    # "checkBoxTextResId":I
    .end local v8    # "checkBoxListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .end local v11    # "deleteStarred":Ljava/util/concurrent/atomic/AtomicBoolean;
    :goto_1
    return-void

    .line 1099
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onStartDeleteConversation()V

    goto :goto_1
.end method

.method private setIcon(Landroid/widget/ListView;II)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;
    .param p2, "viewId"    # I
    .param p3, "iconId"    # I

    .prologue
    .line 1007
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1008
    .local v0, "iconView":Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 1009
    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1011
    :cond_0
    return-void
.end method

.method private setIcons(IIIIII)V
    .locals 2
    .param p1, "mediaIcon"    # I
    .param p2, "photoIcon"    # I
    .param p3, "sketchIcon"    # I
    .param p4, "locationIcon"    # I
    .param p5, "soundsIcon"    # I
    .param p6, "videoIcon"    # I

    .prologue
    .line 994
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 995
    .local v0, "listView":Landroid/widget/ListView;
    if-nez v0, :cond_0

    .line 1004
    :goto_0
    return-void

    .line 998
    :cond_0
    const v1, 0x7f0a006f

    invoke-direct {p0, v0, v1, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcon(Landroid/widget/ListView;II)V

    .line 999
    const v1, 0x7f0a0070

    invoke-direct {p0, v0, v1, p2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcon(Landroid/widget/ListView;II)V

    .line 1000
    const v1, 0x7f0a0071

    invoke-direct {p0, v0, v1, p3}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcon(Landroid/widget/ListView;II)V

    .line 1001
    const v1, 0x7f0a0073

    invoke-direct {p0, v0, v1, p4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcon(Landroid/widget/ListView;II)V

    .line 1002
    const v1, 0x7f0a0072

    invoke-direct {p0, v0, v1, p5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcon(Landroid/widget/ListView;II)V

    .line 1003
    const v1, 0x7f0a0074

    invoke-direct {p0, v0, v1, p6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcon(Landroid/widget/ListView;II)V

    goto :goto_0
.end method

.method private setListViewSelection(I)V
    .locals 2
    .param p1, "listViewIndex"    # I

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 773
    .local v0, "listview":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 774
    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 776
    :cond_0
    return-void
.end method

.method private setMarkedListener()V
    .locals 2

    .prologue
    .line 855
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    new-instance v1, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$9;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setMarkedListener(Lcom/sonyericsson/conversations/ui/MessageListFragment$BubbleClickListener;)V

    .line 864
    return-void
.end method

.method private setMenu(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1158
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteConversationMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 1159
    if-nez p1, :cond_1

    .line 1160
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1161
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1163
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1164
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 1165
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1169
    :goto_1
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isPriorityAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1170
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1167
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1172
    :cond_4
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getCount()I

    move-result v1

    if-le v1, v3, :cond_5

    .line 1174
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1177
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteConversationMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private setMessageListMarkableMode(Z)V
    .locals 3
    .param p1, "isInMarkMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1185
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setMessageListMarkableMode(Z)V

    .line 1186
    if-eqz p1, :cond_0

    .line 1187
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMarkedListener()V

    .line 1188
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1189
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1190
    new-instance v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    .line 1191
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMsgListFragmentMarkableListener:Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1192
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1202
    :goto_0
    return-void

    .line 1194
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 1195
    .local v0, "msgListView":Landroid/widget/ListView;
    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    .line 1196
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 1197
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1198
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 1199
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->setMarkCallBackListener(Lcom/sonyericsson/conversations/ui/MarkModeCallBack$MarkableListener;)V

    .line 1200
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    goto :goto_0
.end method

.method private showDialog(IILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "titleResId"    # I
    .param p2, "iconResId"    # I
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "positiveBtnResId"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeBtnResId"    # I
    .param p7, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 662
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 663
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 664
    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 665
    invoke-virtual {v0, p3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 666
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 667
    invoke-virtual {v0, p6, p7}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 669
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 670
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    .line 671
    return-void
.end method

.method private showOpenProgressDlgDelayed()V
    .locals 4

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1015
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mShowOpenProgressDlg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1016
    return-void
.end method

.method private showProgressDialog(ILjava/lang/String;)V
    .locals 4
    .param p1, "titleId"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1025
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 1026
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1028
    :cond_0
    const-string v0, ""

    .line 1029
    .local v0, "title":Ljava/lang/String;
    if-lez p1, :cond_1

    .line 1030
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1033
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v0, p2, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 1034
    return-void
.end method

.method private showProgressDlg()V
    .locals 5

    .prologue
    .line 1337
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1338
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1341
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1342
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const-string v1, ""

    const v2, 0x7f07001a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mPd:Landroid/app/ProgressDialog;

    .line 1346
    :cond_1
    return-void
.end method

.method private startDeleteSeveralMessages()V
    .locals 1

    .prologue
    .line 1145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMessageListMarkableMode(Z)V

    .line 1146
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onStartDeleteSeveralMessages()V

    .line 1147
    return-void
.end method

.method private useContrastIcons()V
    .locals 7

    .prologue
    .line 980
    const v1, 0x7f020007

    const v2, 0x7f020091

    const v3, 0x7f020003

    const v4, 0x7f020005

    const v5, 0x7f02000b

    const v6, 0x7f020093

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcons(IIIIII)V

    .line 986
    return-void
.end method

.method private useNormalIcons()V
    .locals 7

    .prologue
    .line 971
    const v1, 0x7f020006

    const v2, 0x7f020090

    const v3, 0x7f020002

    const v4, 0x7f020004

    const v5, 0x7f02000a

    const v6, 0x7f020092

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setIcons(IIIIII)V

    .line 977
    return-void
.end method


# virtual methods
.method getActionMenuForTest()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 835
    const/4 v0, 0x0

    .line 837
    .local v0, "actionMenu":Landroid/view/Menu;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    if-eqz v1, :cond_0

    .line 838
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v0, v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mActionMenu:Landroid/view/Menu;

    .line 841
    :cond_0
    return-object v0
.end method

.method getContextMenuForTest()Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuForTest:Landroid/view/ContextMenu;

    return-object v0
.end method

.method getCustomViewForTest()Landroid/view/View;
    .locals 2

    .prologue
    .line 845
    const/4 v0, 0x0

    .line 847
    .local v0, "customView":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    if-eqz v1, :cond_0

    .line 848
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionModeCallback:Lcom/sonyericsson/conversations/ui/MarkModeCallBack;

    iget-object v0, v1, Lcom/sonyericsson/conversations/ui/MarkModeCallBack;->mCustomView:Landroid/view/View;

    .line 851
    :cond_0
    return-object v0
.end method

.method getDialogFragmentForTest()Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDialogFragmentForTest:Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    return-object v0
.end method

.method public getMessageItemSendAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessageItemSendAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public isFocusedOnLastItem()Z
    .locals 2

    .prologue
    .line 1044
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1047
    const/4 v0, 0x1

    .line 1050
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 291
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    .line 294
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    if-nez v0, :cond_1

    .line 297
    :cond_0
    const-string v0, "MessageListFragment"

    const-string v1, "Activity created but mMessageListModel or Conversation is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :goto_0
    return-void

    .line 301
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    .line 303
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 309
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 310
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->createAndAddFooterView()V

    .line 312
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 315
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->initMessageList()V

    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 318
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->initModel(Landroid/content/Context;Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 319
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 320
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->init(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 321
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->initExistMessageList(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 322
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showOpenProgressDlgDelayed()V

    .line 325
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->addContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    goto :goto_0
.end method

.method protected onCancelDelete()V
    .locals 3

    .prologue
    .line 1360
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/conversations/notifications/Notifications;->updateAll(Landroid/content/Context;)V

    .line 1361
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const v1, 0x7f07003d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1363
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 12
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onCloseSearchModeInMessageList()V

    .line 495
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc7

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_1

    .line 497
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 542
    :goto_0
    return v0

    .line 499
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->resendMessage()V

    .line 500
    const/4 v0, 0x1

    goto :goto_0

    .line 502
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->downloadMessage()V

    .line 503
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->forwardMessage()V

    .line 506
    const/4 v0, 0x1

    goto :goto_0

    .line 508
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->deleteMessage()V

    .line 509
    const/4 v0, 0x1

    goto :goto_0

    .line 511
    :pswitch_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Message;->getDetails()Ljava/lang/String;

    move-result-object v3

    .line 512
    .local v3, "msgDetails":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    const v1, 0x7f070023

    const/4 v2, 0x0

    const v4, 0x104000a

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showDialog(IILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 516
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 518
    .end local v3    # "msgDetails":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->playSlideshow()V

    .line 519
    const/4 v0, 0x1

    goto :goto_0

    .line 521
    :pswitch_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copyTextToClipboard()V

    .line 522
    const/4 v0, 0x1

    goto :goto_0

    .line 524
    :pswitch_7
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copySMSToSimCard(Landroid/app/Activity;)V

    .line 525
    const/4 v0, 0x1

    goto :goto_0

    .line 527
    :pswitch_8
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->replyAll()V

    .line 528
    const/4 v0, 0x1

    goto :goto_0

    .line 530
    :pswitch_9
    const v5, 0x7f070124

    const v6, 0x7f020020

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->formatViewRecipientsDialogMessage(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    const v8, 0x104000a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showDialog(IILjava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 534
    const/4 v0, 0x1

    goto :goto_0

    .line 536
    :pswitch_a
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getTimestampHeaderView()Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->starMessage(Lcom/sonyericsson/conversations/ui/MessageTimestampHeaderView;)V

    .line 537
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 542
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0

    .line 497
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 269
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "conversation"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Conversation;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    .line 270
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "focusmessageuri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "focusedMessageUri":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 274
    :cond_0
    new-instance v1, Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/model/MessageListModel;-><init>(Lcom/sonyericsson/conversations/model/Conversation;Landroid/net/Uri;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 275
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/16 v3, 0x6d

    const/4 v2, 0x0

    .line 435
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 438
    instance-of v0, p2, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-eqz v0, :cond_8

    .line 439
    check-cast p2, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .end local p2    # "v":Landroid/view/View;
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuSelectedBubble:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->getActionController()Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 443
    const/16 v0, 0x69

    const v1, 0x7f0700d2

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isPlaySlideshowVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    const/16 v0, 0x68

    const v1, 0x7f07004b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isResendVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 451
    const/16 v0, 0x64

    const v1, 0x7f07004a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 454
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isDownloadVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    const/16 v0, 0x65

    const v1, 0x7f070048

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isForwardEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 460
    const/16 v0, 0x66

    const v1, 0x7f070049

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 463
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isCopySmsToSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 464
    const/16 v0, 0x6a

    const v1, 0x7f0700d3

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 467
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isReplyAllVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 468
    const/16 v0, 0x6b

    const v1, 0x7f070122

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 470
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isViewRecipientsVisible()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 471
    const/16 v0, 0x6c

    const v1, 0x7f070123

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 475
    :cond_7
    const/16 v0, 0x67

    const v1, 0x7f07001a

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 476
    const/16 v0, 0x6e

    const v1, 0x7f070022

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 478
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->isStarredMessage()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 479
    const v0, 0x7f070021

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 486
    :cond_8
    :goto_0
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenuForTest:Landroid/view/ContextMenu;

    .line 487
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenu:Landroid/view/ContextMenu;

    .line 488
    return-void

    .line 482
    :cond_9
    const v0, 0x7f070020

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflate"    # Landroid/view/MenuInflater;

    .prologue
    .line 1058
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1059
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1060
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1062
    const v1, 0x7f0a00cb

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteConversationMenuItem:Landroid/view/MenuItem;

    .line 1063
    const v1, 0x7f0a00ca

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mDeleteSeveralMenuItem:Landroid/view/MenuItem;

    .line 1064
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 281
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-nez v0, :cond_0

    .line 282
    new-instance v0, Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mConversation:Lcom/sonyericsson/conversations/model/Conversation;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/model/MessageListModel;-><init>(Lcom/sonyericsson/conversations/model/Conversation;Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 285
    :cond_0
    const v0, 0x7f03000c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDataLoaded(Landroid/database/Cursor;)V
    .locals 9
    .param p1, "data"    # Landroid/database/Cursor;

    .prologue
    const-wide/16 v7, -0x1

    .line 338
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 339
    .local v2, "listView":Landroid/widget/ListView;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    .line 340
    .local v3, "threadId":J
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_0

    cmp-long v5, v3, v7

    if-eqz v5, :cond_0

    .line 346
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 347
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    const/high16 v6, 0x7f040000

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 349
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 352
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v5, :cond_3

    .line 353
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 357
    :goto_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onMsgListLoadFinished()V

    .line 358
    cmp-long v5, v3, v7

    if-eqz v5, :cond_1

    .line 363
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v5, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 365
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setShowDateSeparator(Z)V

    .line 367
    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setWallpaper(J)V

    .line 370
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 372
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(Landroid/net/Uri;)V

    .line 373
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 385
    :goto_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->dismissOpenProgressDlgDelayed()V

    .line 386
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 390
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v5, :cond_2

    .line 391
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v5}, Landroid/view/ActionMode;->invalidate()V

    .line 393
    :cond_2
    return-void

    .line 355
    :cond_3
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->clearHighPattern()V

    goto :goto_0

    .line 375
    :cond_4
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getFirstUnreadMessageIndex()I

    move-result v1

    .line 376
    .local v1, "lastUnreadIndex":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_5

    .line 378
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(I)V

    goto :goto_1

    .line 381
    :cond_5
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(I)V

    goto :goto_1
.end method

.method public onDataReset()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 397
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 589
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mClosedByUser:Z

    .line 591
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 592
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMultiSelectionMode:Landroid/view/ActionMode;

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 596
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->cancelSendAnimationsInProgress()V

    .line 599
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 600
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 604
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->dismissOpenProgressDlgDelayed()V

    .line 606
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageActionController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->clear()V

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 618
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-eqz v0, :cond_3

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->uninitModel(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    .line 620
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    .line 623
    :cond_3
    invoke-static {}, Lcom/sonyericsson/conversations/util/ContactLookup;->getInstance()Lcom/sonyericsson/conversations/util/ContactLookup;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mContactLookupListener:Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ContactLookup;->removeContactLookupListener(Lcom/sonyericsson/conversations/util/ContactLookup$ContactLookupListener;)V

    .line 624
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 625
    return-void
.end method

.method public varargs onModelChange(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1388
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_PRE_DELETE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1389
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onPreDelete()V

    .line 1400
    :cond_0
    :goto_0
    return-void

    .line 1390
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_CANCEL_DELETE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1391
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onCancelDelete()V

    goto :goto_0

    .line 1392
    :cond_2
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_POST_DELETE:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1393
    aget-object v1, p2, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1394
    .local v0, "deleteCount":I
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onPostDelete(I)V

    goto :goto_0

    .line 1395
    .end local v0    # "deleteCount":I
    :cond_3
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_LOADED:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1396
    aget-object v1, p2, v2

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onDataLoaded(Landroid/database/Cursor;)V

    goto :goto_0

    .line 1397
    :cond_4
    sget-object v1, Lcom/sonyericsson/conversations/model/MessageListModel;->MODEL_EVENT_DATA_RESET:Ljava/lang/String;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->onDataReset()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1070
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    invoke-interface {v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;->onCloseSearchModeInMessageList()V

    .line 1072
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1080
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1074
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->startDeleteSeveralMessages()V

    goto :goto_0

    .line 1077
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->prepareDeleteConversation()V

    goto :goto_0

    .line 1072
    :pswitch_data_0
    .packed-switch 0x7f0a00ca
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1150
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsMenuVisible:Z

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setMenu(Z)V

    .line 1151
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 244
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 245
    const-string v0, "FocusedIndex"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedIndex()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 246
    const-string v0, "FocusedUri"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getFocusedMessageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 247
    const-string v0, "ThreadId"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 416
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 418
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->preLoadWallpaper(J)V

    .line 420
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->forceLoad()V

    .line 424
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 429
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 430
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 431
    return-void
.end method

.method protected preLoadWallpaper(J)V
    .locals 3
    .param p1, "threadId"    # J

    .prologue
    .line 936
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v1

    .line 937
    .local v1, "wallpapers":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 938
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {v1, v0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->preLoad(Landroid/content/Context;J)V

    .line 939
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1324
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    .prologue
    .line 1327
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mCallback:Lcom/sonyericsson/conversations/ui/MessageListFragment$MessageListFragmentCallback;

    .line 1328
    return-void
.end method

.method public setFocusedMessage(I)V
    .locals 5
    .param p1, "messageIndex"    # I

    .prologue
    .line 747
    add-int/lit8 v0, p1, -0x1

    .line 749
    .local v0, "index":I
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedIndex(I)V

    .line 751
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    if-nez v1, :cond_0

    .line 769
    :goto_0
    return-void

    .line 755
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 758
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListItemPopulateListener:Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setListItemPopulateListener(Lcom/sonyericsson/conversations/ui/MessageListAdapter$MessageListItemPopulateListener;)V

    .line 761
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment$8;-><init>(Lcom/sonyericsson/conversations/ui/MessageListFragment;I)V

    const-wide/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public setFocusedMessage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "focusMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 803
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v1, :cond_0

    .line 804
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->getMessageIndexFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 805
    .local v0, "focusMessageIndex":I
    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->setFocusedMessage(I)V

    .line 807
    .end local v0    # "focusMessageIndex":I
    :cond_0
    return-void
.end method

.method public setFocusedMessageUri(Landroid/net/Uri;)V
    .locals 2
    .param p1, "focusedMessageUri"    # Landroid/net/Uri;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    .line 239
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mFocusedMessageUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/model/MessageListModel;->setFocusedMessageUri(Landroid/net/Uri;)V

    .line 240
    return-void
.end method

.method public setHighlightPattern(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "highlightPattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    .line 795
    return-void
.end method

.method public setListEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 815
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 818
    :cond_0
    return-void
.end method

.method public setListViewSelectionOnFooter(Landroid/view/View;)V
    .locals 4
    .param p1, "targetView"    # Landroid/view/View;

    .prologue
    .line 779
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 780
    .local v0, "listview":Landroid/widget/ListView;
    if-eqz v0, :cond_0

    .line 781
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    .line 782
    .local v1, "position":I
    const/4 v2, 0x0

    .line 783
    .local v2, "viewTopPos":I
    if-nez p1, :cond_1

    .line 784
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 789
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 791
    .end local v1    # "position":I
    .end local v2    # "viewTopPos":I
    :cond_0
    return-void

    .line 786
    .restart local v1    # "position":I
    .restart local v2    # "viewTopPos":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0
.end method

.method public setMenuVisibleFlag(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 1154
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mIsMenuVisible:Z

    .line 1155
    return-void
.end method

.method public setSendAnimatorAndItemAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V
    .locals 1
    .param p1, "sendAnimator"    # Landroid/animation/Animator;
    .param p2, "messageItemSendAnimator"    # Landroid/animation/Animator;

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setSendAnimator(Landroid/animation/Animator;Landroid/animation/Animator;)V

    .line 1405
    return-void
.end method

.method public setSendingMessageKey(J)V
    .locals 1
    .param p1, "key"    # J

    .prologue
    .line 1331
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setSendingMessageKey(J)V

    .line 1334
    :cond_0
    return-void
.end method

.method public setUpdateFocus(Z)V
    .locals 0
    .param p1, "isNeed"    # Z

    .prologue
    .line 1054
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 1055
    return-void
.end method

.method public setWallpaper(J)V
    .locals 6
    .param p1, "threadId"    # J

    .prologue
    .line 947
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v3

    .line 948
    .local v3, "wallpapers":Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 949
    .local v0, "applicationContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 950
    .local v2, "listView":Landroid/widget/ListView;
    if-nez v2, :cond_0

    .line 951
    const-string v4, "MessageListFragment"

    const-string v5, "Cannot set background if list view is not accessible."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    :goto_0
    return-void

    .line 956
    :cond_0
    :try_start_0
    invoke-virtual {v3, v0, v2, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->setWallpaper(Landroid/content/Context;Landroid/view/View;J)V

    .line 957
    invoke-virtual {v3, v0, p1, p2}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;J)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 958
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->useContrastIcons()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 962
    :catch_0
    move-exception v1

    .line 963
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "MessageListFragment"

    const-string v5, "Failed to set wallpaper"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 960
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->useNormalIcons()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 964
    :catch_1
    move-exception v1

    .line 966
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "MessageListFragment"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public update(Lcom/sonyericsson/conversations/model/Conversation;Z)V
    .locals 9
    .param p1, "conversation"    # Lcom/sonyericsson/conversations/model/Conversation;
    .param p2, "isForceAnimate"    # Z

    .prologue
    const-wide/16 v7, -0x1

    .line 867
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    if-nez v3, :cond_1

    .line 928
    :cond_0
    :goto_0
    return-void

    .line 875
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 876
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 877
    .local v0, "listView":Landroid/widget/ListView;
    if-eqz v0, :cond_3

    .line 878
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/MessageListModel;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_6

    .line 884
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 885
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    cmp-long v3, v3, v7

    if-nez v3, :cond_5

    .line 889
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 908
    .end local v0    # "listView":Landroid/widget/ListView;
    :cond_3
    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mNeedToUpdateFocus:Z

    .line 909
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/model/MessageListModel;->setConversation(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 910
    invoke-virtual {p1}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    .line 911
    .local v1, "threadId":J
    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    .line 912
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    if-eqz v3, :cond_4

    .line 913
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    if-eqz v3, :cond_7

    .line 914
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mHighlightPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v4}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->setHighlightPattern(Ljava/util/regex/Pattern;)V

    .line 918
    :goto_2
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->init(Lcom/sonyericsson/conversations/model/Conversation;)V

    .line 922
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->preLoadWallpaper(J)V

    .line 925
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v3, p0}, Lcom/sonyericsson/conversations/model/MessageListModel;->loadForListener(Lcom/sonyericsson/conversations/model/BaseModel$IModelChangeListener;)V

    goto :goto_0

    .line 895
    .end local v1    # "threadId":J
    .restart local v0    # "listView":Landroid/widget/ListView;
    :cond_5
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 897
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListModel:Lcom/sonyericsson/conversations/model/MessageListModel;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/MessageListModel;->isLoadStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 899
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/MessageListFragment;->showOpenProgressDlgDelayed()V

    goto :goto_1

    .line 903
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 916
    .end local v0    # "listView":Landroid/widget/ListView;
    .restart local v1    # "threadId":J
    :cond_7
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/MessageListFragment;->mMessageListAdapter:Lcom/sonyericsson/conversations/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/MessageListAdapter;->clearHighPattern()V

    goto :goto_2
.end method
