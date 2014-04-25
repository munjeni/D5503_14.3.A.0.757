.class public Lcom/sonyericsson/conversations/ui/EditorFragment;
.super Landroid/app/Fragment;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/ConversationRecipientEditorFragment$RecipientEditorContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;,
        Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;
    }
.end annotation


# static fields
.field private static final INPUT_TEXT_ACTION_ADD_RECIPIENT:I = 0xb

.field private static final INPUT_TEXT_ACTION_SEND:I = 0xa

.field private static final LOCATION_DETAILS:Ljava/lang/String; = "location"

.field private static final PROGRESS_DIALOG_NO_TITLE:Ljava/lang/String; = ""

.field private static final REQUEST_CODE_ADD_MEDIA:I = 0xc9

.field private static final REQUEST_CODE_MEDIA_CONTROLLER_FIRST:I = 0xca

.field private static final REQUEST_CODE_MEDIA_CONTROLLER_LAST:I = 0xd4

.field public static final REQUEST_CODE_MMS_PREVIEW:I = 0x69

.field private static final REQUEST_CODE_PICK_ADD_RECIPIENT_EDITOR:I = 0x68

.field private static final REQUEST_CODE_SELECT_WALLPAPER:I = 0x6a

.field private static final REQUEST_CODE_VIDEO_EDIT:I = 0x12d

.field private static final SEMI_TRANSPARENT:I = 0x7d

.field private static final TAG:Ljava/lang/String; = "EditorFragment"

.field private static final VALUE_CONSIDERED_LOWER_THEN_KEYBOARD_HEIGHT:I = 0x64


# instance fields
.field private mAddMediaBtn:Landroid/widget/ImageButton;

.field private mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

.field private mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

.field private mAddRecipientMenuItem:Landroid/view/MenuItem;

.field private mAddSubjectMenuItem:Landroid/view/MenuItem;

.field private mAddToContactMenuItem:Landroid/view/MenuItem;

.field private mAddedMediaCounter:Landroid/widget/TextView;

.field private mBlockMasterPileTap:Z

.field private mBodyInput:Landroid/widget/EditText;

.field private mBottomPanelToolbar:Landroid/widget/LinearLayout;

.field mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

.field private mClearWallpaperMenuItem:Landroid/view/MenuItem;

.field private mComposer:Lcom/sonyericsson/conversations/ui/Composer;

.field private mComposerLinearLayout:Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

.field private mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

.field private mContentAdapterKey:J

.field private mConvertToMmsMenuItem:Landroid/view/MenuItem;

.field private mConvertToSmsMenuItem:Landroid/view/MenuItem;

.field private mEditButton:Landroid/widget/Button;

.field private mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

.field mEditorView:Landroid/view/View;

.field private mEnableAddMmsAttachment:Z

.field mEnableForceMessageType:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsActive:Z

.field private mIsFullScreen:Z

.field private mIsMenuVisible:Z

.field private mIsTextMessagingEnabled:Z

.field private mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

.field private mMasterPileIsExpanded:Z

.field private mMasterPileKey:J

.field private mPd:Landroid/app/ProgressDialog;

.field private mPreBtn:Landroid/widget/ImageButton;

.field private mPrioritySelected:I

.field private mPriorityView:Landroid/widget/ImageView;

.field private mRecipientsEmpty:Z

.field private mRemoveSubjectMenuItem:Landroid/view/MenuItem;

.field private mRequestBodyInputLayout:Ljava/lang/Runnable;

.field private mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

.field private mSendButton:Landroid/widget/Button;

.field private mSendButtonProgressBar:Landroid/widget/ProgressBar;

.field private mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

.field private mSetPriorityMenuItem:Landroid/view/MenuItem;

.field private mSetWallpaperMenuItem:Landroid/view/MenuItem;

.field private mShowEditButton:Z

.field private mShowEmptySubject:Z

.field private mSlideShowEditing:Z

.field private mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

.field private mSubjectInput:Landroid/widget/EditText;

.field private mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

.field private mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

.field private mTextTemplateMenuItem:Landroid/view/MenuItem;

.field private mVirtualKeyBoardShowing:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 374
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    .line 203
    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    .line 205
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    .line 207
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    .line 209
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    .line 212
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z

    .line 218
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z

    .line 224
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    .line 228
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableAddMmsAttachment:Z

    .line 230
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z

    .line 232
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEditButton:Z

    .line 234
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mVirtualKeyBoardShowing:Z

    .line 236
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRecipientsEmpty:Z

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    .line 241
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    .line 245
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRequestBodyInputLayout:Ljava/lang/Runnable;

    .line 253
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    .line 275
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    .line 283
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    .line 2507
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$23;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$23;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    .line 375
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 1
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    .line 378
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Z)V

    .line 379
    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/conversations/ui/Composer;Z)V
    .locals 5
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;
    .param p2, "isFullScreen"    # Z

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 382
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 201
    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    .line 203
    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    .line 205
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    .line 207
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    .line 209
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    .line 212
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z

    .line 218
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z

    .line 224
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 226
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    .line 228
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableAddMmsAttachment:Z

    .line 230
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z

    .line 232
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEditButton:Z

    .line 234
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mVirtualKeyBoardShowing:Z

    .line 236
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRecipientsEmpty:Z

    .line 239
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    .line 241
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    .line 245
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRequestBodyInputLayout:Ljava/lang/Runnable;

    .line 253
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    .line 275
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    .line 283
    iput-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    .line 2507
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$23;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$23;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    .line 383
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 384
    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsFullScreen:Z

    .line 385
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->checkAndUpdateEditorState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableAddMmsAttachment:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->addMedia()V

    return-void
.end method

.method static synthetic access$1300(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showCannotAddAttachmentToast()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/conversations/ui/EditorFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->launchPickerByType(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sonyericsson/conversations/ui/EditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->editSlideshow()V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/conversations/ui/EditorFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$2002(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/MessageContentAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/PileView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "x6"    # I
    .param p7, "x7"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "x8"    # I
    .param p9, "x9"    # Landroid/content/DialogInterface$OnClickListener;
    .param p10, "x10"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p11, "x11"    # Landroid/widget/ListAdapter;
    .param p12, "x12"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 90
    invoke-direct/range {p0 .. p12}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/conversations/ui/EditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/sonyericsson/conversations/ui/EditorFragment;)J
    .locals 2
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/SendContactListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/conversations/ui/EditorFragment;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # [J

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByVcard([J)V

    return-void
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sonyericsson/conversations/ui/EditorFragment;[J)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # [J

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByText([J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->postShowProgressRunnable()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/conversations/ui/EditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->addVcard(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->insertContactText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/conversations/ui/EditorFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    iget v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    return v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/conversations/ui/EditorFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    return p1
.end method

.method static synthetic access$800(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updatePriorityIcon()V

    return-void
.end method

.method static synthetic access$900(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->refreshIMEAction()V

    return-void
.end method

.method private adaptBackgroundToTheme(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "resourceId"    # I

    .prologue
    .line 455
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 456
    .local v1, "resources":Landroid/content/res/Resources;
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 457
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 459
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 460
    return-object v0
.end method

.method private addMedia()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2324
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initAddMediaListAdapter()V

    .line 2326
    new-instance v12, Lcom/sonyericsson/conversations/ui/EditorFragment$22;

    invoke-direct {v12, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$22;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 2334
    .local v12, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v6, v2

    move-object v7, v5

    move v8, v2

    move-object v9, v5

    move-object v10, v5

    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2336
    return-void
.end method

.method private addVcard(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 2859
    if-eqz p1, :cond_0

    .line 2860
    const-string v4, "sendContact_error_code"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 2861
    .local v1, "errorText":I
    const-string v4, "sendContact_vcard_uri"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 2863
    .local v3, "vCardUri":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 2864
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 2884
    .end local v1    # "errorText":I
    .end local v3    # "vCardUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 2867
    .restart local v1    # "errorText":I
    .restart local v3    # "vCardUri":Landroid/net/Uri;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v4, :cond_2

    .line 2868
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4, v3}, Lcom/sonyericsson/conversations/ui/Composer;->addAttachment(Landroid/net/Uri;)V

    .line 2870
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2877
    if-eqz v1, :cond_0

    .line 2878
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    :goto_1
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2872
    :catch_0
    move-exception v0

    .line 2873
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const v1, 0x7f0700ca

    .line 2877
    if-eqz v1, :cond_0

    .line 2878
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    goto :goto_1

    .line 2874
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    :catch_1
    move-exception v2

    .line 2875
    .local v2, "se":Ljava/lang/SecurityException;
    const v1, 0x7f07006b

    .line 2877
    if-eqz v1, :cond_0

    .line 2878
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    goto :goto_1

    .line 2877
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 2878
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2877
    :cond_3
    throw v4
.end method

.method private alignBodyText()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 1607
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    .line 1611
    .local v0, "centerBodyText":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 1612
    const v2, 0x7f0d005e

    .line 1613
    .local v2, "minHeight":I
    const v1, 0x800013

    .line 1619
    .local v1, "gravity":I
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getGravity()I

    move-result v3

    if-eq v1, v3, :cond_0

    .line 1620
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 1621
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1623
    :cond_0
    return-void

    .line 1607
    .end local v0    # "centerBodyText":Z
    .end local v1    # "gravity":I
    .end local v2    # "minHeight":I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1615
    .restart local v0    # "centerBodyText":Z
    :cond_2
    const v2, 0x7f0d001d

    .line 1616
    .restart local v2    # "minHeight":I
    const v1, 0x800033

    .restart local v1    # "gravity":I
    goto :goto_1
.end method

.method private checkAndUpdateEditorState()V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 1600
    :cond_0
    :goto_0
    return-void

    .line 1597
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableDisableSendButton()V

    .line 1598
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showHideSendButton()V

    .line 1599
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->alignBodyText()V

    goto :goto_0
.end method

.method private declared-synchronized dismissProgressDialog()V
    .locals 1

    .prologue
    .line 2791
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2792
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2794
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2795
    monitor-exit p0

    return-void

    .line 2791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private editSlideshow()V
    .locals 3

    .prologue
    .line 2178
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/16 v2, 0xca

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;-><init>(Landroid/app/Fragment;I)V

    .line 2180
    .local v0, "mediaController":Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_0

    .line 2181
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2183
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2187
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 2188
    .local v1, "messageUri":Landroid/net/Uri;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentConversationParticipants()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchSlideshowEdior(Landroid/net/Uri;Ljava/util/ArrayList;)V

    .line 2191
    .end local v1    # "messageUri":Landroid/net/Uri;
    :cond_0
    return-void

    .line 2184
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enableDisableSendButton()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1630
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 1631
    .local v3, "participantsCount":I
    if-gtz v3, :cond_0

    iget-boolean v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRecipientsEmpty:Z

    if-nez v6, :cond_2

    :cond_0
    move v1, v5

    .line 1632
    .local v1, "hasRecipients":Z
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isMessageSendable()Z

    move-result v2

    .line 1633
    .local v2, "messageIsSendable":Z
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    move v0, v5

    .line 1635
    .local v0, "enableSendButton":Z
    :goto_1
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eq v0, v4, :cond_1

    .line 1636
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1638
    :cond_1
    return-void

    .end local v0    # "enableSendButton":Z
    .end local v1    # "hasRecipients":Z
    .end local v2    # "messageIsSendable":Z
    :cond_2
    move v1, v4

    .line 1631
    goto :goto_0

    .restart local v1    # "hasRecipients":Z
    .restart local v2    # "messageIsSendable":Z
    :cond_3
    move v0, v4

    .line 1633
    goto :goto_1
.end method

.method private enableTextInput(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const v1, 0x7f0700f1

    .line 2752
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2753
    if-eqz p1, :cond_2

    .line 2754
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v0, :cond_1

    .line 2755
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0700be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 2778
    :cond_0
    :goto_0
    return-void

    .line 2757
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0700bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 2758
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 2760
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    .line 2761
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2763
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 2765
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2766
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSlideshowEditorEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2769
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0

    .line 2773
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v1, 0x7f0700f0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    goto :goto_0
.end method

.method private getAddContactVisibility()Z
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    .line 1193
    const/4 v3, 0x0

    .line 1194
    .local v3, "visible":Z
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->isToFieldFragmentVisible()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1197
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1198
    .local v2, "participantNumber":I
    if-lt v2, v6, :cond_1

    .line 1199
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 1200
    .local v1, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->isInCache()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getContactId()J

    move-result-wide v4

    cmp-long v4, v4, v7

    if-nez v4, :cond_0

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1203
    const/4 v3, 0x1

    .line 1210
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    .end local v2    # "participantNumber":I
    :cond_1
    return v3
.end method

.method private getAddSubjectVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1269
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSubjectFieldVisible()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getAddTemplateVisibility()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1257
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-nez v3, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return v1

    .line 1260
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 1262
    .local v0, "AddTemplateInVisibile":Z
    :goto_1
    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .end local v0    # "AddTemplateInVisibile":Z
    :cond_3
    move v0, v1

    .line 1260
    goto :goto_1
.end method

.method private getClearWallpaperVisibility()Z
    .locals 5

    .prologue
    .line 1247
    invoke-static {}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->getInstance()Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/persist/ConversationWallpaperManager;->hasWallpaper(Landroid/content/Context;J)Z

    move-result v0

    .line 1250
    .local v0, "hasWallpaper":Z
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isCurrentConversationValid()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getComposerText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 476
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v0

    .line 480
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 484
    .end local v0    # "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getConvertToMmsVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1314
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 1317
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableForceMessageType:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getConvertToSmsVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1303
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v2, :cond_0

    .line 1306
    :goto_0
    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableForceMessageType:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private getCurrentConversationParticipants()Ljava/util/ArrayList;
    .locals 7
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
    .line 2891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2898
    .local v1, "addresses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v4

    .line 2899
    .local v4, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 2902
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 2903
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    .line 2904
    .local v3, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2905
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2906
    invoke-static {v0}, Lcom/sonyericsson/conversations/util/TextUtil;->removeRedundantChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2908
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2902
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2911
    .end local v0    # "address":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_1
    return-object v1
.end method

.method private getCurrentMessageSize()I
    .locals 2

    .prologue
    .line 2362
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    .line 2363
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 2364
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    if-eqz v0, :cond_0

    .line 2365
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v1

    .line 2368
    .end local v0    # "slideshow":Lcom/android/mms/model/SlideshowModel;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDeleteSubjectVisibility()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1288
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 1291
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSubjectFieldVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getMediaType(Landroid/content/Intent;)I
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 737
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 740
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getSetWallpaperVisibility()Z
    .locals 1

    .prologue
    .line 1237
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isCurrentConversationValid()Z

    move-result v0

    return v0
.end method

.method private getTextTemplateStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/template/sms/TextTemplate;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1514
    .local p1, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    const/4 v2, 0x0

    .line 1515
    .local v2, "templateStrings":[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1516
    .local v1, "len":I
    if-lez v1, :cond_0

    .line 1517
    new-array v2, v1, [Ljava/lang/String;

    .line 1518
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1519
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/template/sms/TextTemplate;

    invoke-virtual {v3}, Lcom/sonymobile/template/sms/TextTemplate;->getText()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1518
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1522
    .end local v0    # "i":I
    :cond_0
    return-object v2
.end method

.method private handleAddAudio(Landroid/content/Intent;)V
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 623
    if-nez p1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 630
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddAudio(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private handleAddAudio(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const v6, 0x7f070094

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 634
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v0

    .line 635
    .local v0, "currentSize":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)I

    move-result v1

    .line 637
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    .line 668
    :cond_0
    :goto_0
    invoke-direct {p0, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 669
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 670
    return-void

    .line 642
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v3, :cond_0

    .line 643
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/ui/Composer;->addAudio(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 645
    :catch_0
    move-exception v2

    .line 646
    .local v2, "se":Ljava/lang/SecurityException;
    invoke-virtual {p0, v6, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 656
    .end local v2    # "se":Ljava/lang/SecurityException;
    :sswitch_1
    const v3, 0x7f070068

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 662
    :sswitch_2
    invoke-virtual {p0, v6, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 637
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc9 -> :sswitch_2
        0xcb -> :sswitch_1
    .end sparse-switch
.end method

.method private handleAddEmptySlideshow(I)V
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v0, :cond_1

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 721
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->handleEmptySlideshow()V

    goto :goto_0

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->slideshowIsEmpty(Lcom/android/mms/model/SlideshowModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->handleEmptySlideshow()V

    goto :goto_0
.end method

.method private handleAddImage(Landroid/content/Intent;I)V
    .locals 6
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "mediaType"    # I

    .prologue
    .line 513
    if-nez p1, :cond_0

    .line 537
    :goto_0
    return-void

    .line 520
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 521
    .local v0, "imageUri":Landroid/net/Uri;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isLocationMediaType(I)Z

    move-result v1

    .line 524
    .local v1, "isLocation":Z
    if-eqz v1, :cond_1

    .line 525
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddLocation(Landroid/content/Intent;Ljava/lang/StringBuilder;)V

    .line 528
    :cond_1
    const-string v4, ""

    const v5, 0x7f07009f

    invoke-virtual {p0, v5}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 531
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/Object;

    .line 532
    .local v2, "object":[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object v0, v2, v4

    .line 533
    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 534
    const/4 v4, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v2, v4

    .line 536
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startAddmediaTask([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleAddImage(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    .line 540
    if-nez p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 546
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, ""

    const v3, 0x7f07009f

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 549
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/Object;

    .line 550
    .local v0, "object":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 551
    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 552
    const/4 v2, 0x2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    .line 554
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startAddmediaTask([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleAddLocation(Landroid/content/Intent;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 488
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->isSdCardMounted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 494
    const v2, 0x7f070118

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    .line 499
    :cond_2
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 500
    .local v0, "locationDetails":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getComposerText()Ljava/lang/String;

    move-result-object v1

    .line 506
    .local v1, "text":Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 507
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private handleAddMediaOk(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "mediaType"    # I

    .prologue
    .line 766
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isImage(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddImage(Landroid/content/Intent;I)V

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 768
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddVideo(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 775
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/RuntimeException;
    throw v0

    .line 770
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAudio(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 771
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddAudio(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 778
    :catch_1
    move-exception v0

    .line 779
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EditorFragment"

    const-string v2, "Could not add media to MMS"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 780
    const v1, 0x7f0700ca

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 772
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_2
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSlideshow(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 773
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddSlideshow(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method private handleAddMediaResult(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I

    .prologue
    .line 787
    if-nez p1, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 791
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 792
    .local v1, "uri":Landroid/net/Uri;
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getMediaType(Landroid/content/Intent;)I

    move-result v0

    .line 794
    .local v0, "mediaType":I
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hasLocationMediaType(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 795
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddMediaOk(Landroid/content/Intent;I)V

    .line 801
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    if-eqz v2, :cond_0

    .line 802
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 796
    :cond_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hasMixedMediaType(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 797
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddNotesResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 798
    :cond_5
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hasSlideshowMediaType(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 799
    invoke-direct {p0, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddEmptySlideshow(I)V

    goto :goto_1
.end method

.method private handleAddNotesResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I

    .prologue
    .line 867
    if-eqz p1, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleTextItemResult(Landroid/content/Intent;)V

    .line 872
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleMixedMediaResult(Landroid/content/Intent;)V

    .line 873
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 874
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 875
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    goto :goto_0
.end method

.method private handleAddSlideshow(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 673
    if-nez p1, :cond_0

    .line 692
    :goto_0
    return-void

    .line 677
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 678
    .local v1, "uri":Landroid/net/Uri;
    const/4 v0, 0x0

    .line 680
    .local v0, "slideshow":Lcom/android/mms/model/SlideshowModel;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    .line 682
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v2, :cond_1

    .line 683
    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 684
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2, v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->handleNonEmptySlideshow(Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;)V

    .line 690
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateComposerViews(Z)V

    .line 691
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0

    .line 686
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->handleEmptySlideshow()V

    goto :goto_1
.end method

.method private handleAddVideo(Landroid/content/Intent;)V
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 558
    if-nez p1, :cond_0

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 565
    .local v0, "uri":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddVideo(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private handleAddVideo(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const v6, 0x7f070093

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 569
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v0

    .line 570
    .local v0, "currentSize":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)I

    move-result v1

    .line 572
    .local v1, "errorCode":I
    sparse-switch v1, :sswitch_data_0

    .line 618
    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 619
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 620
    return-void

    .line 582
    :sswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v3, :cond_0

    .line 583
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, p1}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "se":Ljava/lang/SecurityException;
    invoke-virtual {p0, v6, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 596
    .end local v2    # "se":Ljava/lang/SecurityException;
    :sswitch_1
    const v3, 0x7f070067

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 602
    :sswitch_2
    invoke-virtual {p0, v6, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 612
    :sswitch_3
    const v3, 0x7f07012e

    invoke-virtual {p0, v3, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 572
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xc9 -> :sswitch_2
        0xca -> :sswitch_1
        0xd2 -> :sswitch_3
        0xd4 -> :sswitch_3
    .end sparse-switch
.end method

.method private handleMixedMedia(Landroid/content/Intent;)V
    .locals 7
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 920
    const-string v4, "android.intent.extra.STREAM"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 921
    .local v3, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-nez v3, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    :try_start_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 926
    .local v2, "per":Landroid/net/Uri;
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isImageTypeUri(Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 930
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isRemainEnoughItemNbr()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAudioTooLarge(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 933
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f070066

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 946
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "per":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 947
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v4, "EditorFragment"

    const-string v5, "Could not add media to MMS"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 940
    .end local v0    # "e":Lcom/google/android/mms/MmsException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "per":Landroid/net/Uri;
    :cond_3
    :try_start_1
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddAudio(Landroid/net/Uri;)V

    goto :goto_1

    .line 943
    :cond_4
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddImage(Landroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private handleMixedMediaResult(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 896
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    .line 898
    .local v0, "mimeType":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isImagePlusVoice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 899
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleMixedMedia(Landroid/content/Intent;)V

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isTextPlusVoice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 901
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleSeparateVoice(Landroid/content/Intent;)V

    goto :goto_0

    .line 902
    :cond_2
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isTextPlusImage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 903
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleSeparateImage(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private handleSelectWallpaper(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 732
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 733
    .local v0, "selectedImage":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v1, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onWallpaperSelected(Landroid/net/Uri;)V

    .line 734
    return-void
.end method

.method private handleSeparateImage(Landroid/content/Intent;)V
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 969
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 970
    .local v0, "image":Landroid/net/Uri;
    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddImage(Landroid/net/Uri;)V

    .line 971
    return-void
.end method

.method private handleSeparateVoice(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 958
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 961
    .local v1, "voice":Landroid/net/Uri;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddAudio(Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :goto_0
    return-void

    .line 962
    :catch_0
    move-exception v0

    .line 963
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string v2, "EditorFragment"

    const-string v3, "Could not add media to MMS"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleTextItemResult(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 879
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 881
    .local v1, "noteText":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 893
    :goto_0
    return-void

    .line 885
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 887
    .local v0, "finalText":Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getComposerText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 888
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/Composer;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 890
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getComposerText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private handleVideoEditResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "data"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I

    .prologue
    .line 852
    if-nez p1, :cond_0

    .line 864
    :goto_0
    return-void

    .line 856
    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 857
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleVideoEditResultOk(Landroid/content/Intent;)V

    .line 862
    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 863
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    goto :goto_0

    .line 858
    :cond_2
    if-nez p2, :cond_1

    .line 859
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleVideoEditResultCanceled(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private handleVideoEditResultCanceled(Landroid/content/Intent;)V
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 831
    if-nez p1, :cond_1

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "com.sonyericsson.videoedit.ERROR"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 841
    const v1, 0x7f0700ca

    .line 844
    .local v1, "toastText":I
    const-string v2, "com.sonyericsson.videoedit.FULLHD_VIDEO_NOT_SUPPORTED"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 845
    const v1, 0x7f07012d

    .line 848
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private handleVideoEditResultOk(Landroid/content/Intent;)V
    .locals 5
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 807
    if-nez p1, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v3, :cond_0

    .line 815
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 818
    .local v2, "trimUri":Landroid/net/Uri;
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3, v2}, Lcom/sonyericsson/conversations/ui/Composer;->addVideo(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 819
    :catch_0
    move-exception v1

    .line 820
    .local v1, "se":Ljava/lang/SecurityException;
    const v3, 0x7f070093

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0

    .line 823
    .end local v1    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 824
    .local v0, "e":Ljava/lang/Exception;
    const v3, 0x7f0700ca

    invoke-virtual {p0, v3, v4}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showToast(II)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private hasLocationMediaType(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 695
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x133

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasMixedMediaType(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 707
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x136

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSlideshowMediaType(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 701
    const-string v0, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.sonyericsson.conversations.ui.addmedia.MEDIA_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x132

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initAddMedia()V
    .locals 2

    .prologue
    .line 1794
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a006d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaBtn:Landroid/widget/ImageButton;

    .line 1795
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$9;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1804
    return-void
.end method

.method private initAddMediaListAdapter()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x7

    const-wide/16 v2, 0x5

    .line 2299
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    if-nez v0, :cond_0

    .line 2300
    new-instance v0, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    .line 2301
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addAllMenuItems()V

    .line 2303
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSlideshowEditorEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2304
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isContentEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isSubjectEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 2307
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addMenuItem(J)Z

    .line 2313
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->isGoogleMapsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2314
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasLocationImage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2315
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->removeMenuItem(J)Z

    .line 2320
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2321
    return-void

    .line 2309
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0, v2, v3}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->removeMenuItem(J)Z

    goto :goto_0

    .line 2317
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0, v4, v5}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->addMenuItem(J)Z

    goto :goto_1
.end method

.method private initAddPictureButton()V
    .locals 3

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1965
    .local v0, "addPictureButton":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$18;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$18;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1970
    return-void
.end method

.method private initAddSoundsButton()V
    .locals 3

    .prologue
    .line 1870
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0072

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1871
    .local v0, "addSoundsButton":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1872
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$14;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$14;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1878
    return-void
.end method

.method private initBottomMarginAndToolBar()V
    .locals 2

    .prologue
    .line 1973
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBottomPanelToolbar:Landroid/widget/LinearLayout;

    .line 1975
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initAddPictureButton()V

    .line 1976
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initTakePhotoButton()V

    .line 1978
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/PackageUtil;->isSketchAvailableAndEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1979
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSketchButton()V

    .line 1985
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/location/util/LocationUtils;->isGoogleMapsAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1986
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSelectLocation()V

    .line 1987
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initLocationButton()V

    .line 1991
    :goto_1
    return-void

    .line 1982
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initAddSoundsButton()V

    goto :goto_0

    .line 1989
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initTakeVideoButton()V

    goto :goto_1
.end method

.method private initComposerLinearLayout()V
    .locals 2

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a0065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposerLinearLayout:Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    .line 1688
    return-void
.end method

.method private initEditButton()V
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a006c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditButton:Landroid/widget/Button;

    .line 1995
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$19;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$19;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2004
    return-void
.end method

.method private initEditContainer()V
    .locals 2

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a0066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    .line 1692
    return-void
.end method

.method private initLocationButton()V
    .locals 3

    .prologue
    .line 1881
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0073

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1882
    .local v0, "locationButton":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1883
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$15;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$15;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1889
    return-void
.end method

.method private initMasterPile()V
    .locals 2

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a0063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/PileView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    .line 2043
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->addMasterPileViewToPool(Lcom/sonyericsson/conversations/ui/PileView;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    .line 2045
    new-instance v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    .line 2046
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    if-eqz v0, :cond_0

    .line 2050
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->addMessageContentAdapterToPool(Lcom/sonyericsson/conversations/ui/MessageContentAdapter;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    .line 2052
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2053
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2055
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$20;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$20;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;)V

    .line 2073
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$21;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2173
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 2175
    :cond_0
    return-void
.end method

.method private initMediaCounter()V
    .locals 3

    .prologue
    .line 1807
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddedMediaCounter:Landroid/widget/TextView;

    .line 1808
    const v1, 0x7f02009b

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->adaptBackgroundToTheme(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1809
    .local v0, "addedMediaCounterBg":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddedMediaCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1810
    return-void
.end method

.method private initPreviewButton()V
    .locals 3

    .prologue
    .line 1820
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    .line 1821
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isPreviewButtonAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsFullScreen:Z

    if-eqz v1, :cond_1

    .line 1822
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$10;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$10;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1832
    .local v0, "previewButtonListener":Landroid/view/View$OnClickListener;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1834
    .end local v0    # "previewButtonListener":Landroid/view/View$OnClickListener;
    :cond_1
    return-void
.end method

.method private initSelectLocation()V
    .locals 2

    .prologue
    .line 1813
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    if-nez v0, :cond_0

    .line 1814
    new-instance v0, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    .line 1815
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->addAllMenuItems()V

    .line 1817
    :cond_0
    return-void
.end method

.method private initSendButton()V
    .locals 2

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    .line 1838
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$11;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$11;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1846
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v1, 0x7f0a006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonProgressBar:Landroid/widget/ProgressBar;

    .line 1847
    return-void
.end method

.method private initSendContact()V
    .locals 2

    .prologue
    .line 1789
    new-instance v0, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    .line 1790
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->addAllMenuItems()V

    .line 1791
    return-void
.end method

.method private initSketchButton()V
    .locals 3

    .prologue
    .line 1859
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1860
    .local v0, "sketchButton":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1861
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$13;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$13;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1867
    return-void
.end method

.method private initSubjectInput()V
    .locals 4

    .prologue
    .line 1775
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    .line 1776
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1777
    new-instance v1, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    .line 1782
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 1783
    .local v0, "filter":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v0, v1

    .line 1784
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1786
    .end local v0    # "filter":[Landroid/text/InputFilter;
    :cond_0
    return-void
.end method

.method private initTakePhotoButton()V
    .locals 3

    .prologue
    .line 1850
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1851
    .local v0, "takePhotoButton":Landroid/view/View;
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$12;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$12;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1856
    return-void
.end method

.method private initTakeVideoButton()V
    .locals 3

    .prologue
    .line 1892
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0074

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1893
    .local v0, "takeVideoButton":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1894
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$16;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$16;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1900
    return-void
.end method

.method private initTextInput()V
    .locals 4

    .prologue
    .line 1720
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 1723
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 1724
    .local v0, "filter":[Landroid/text/InputFilter;
    const/4 v1, 0x0

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;

    const/16 v3, 0x2710

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment$ToastLengthFilter;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;I)V

    aput-object v2, v0, v1

    .line 1725
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1727
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$7;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$7;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1737
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$8;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1751
    return-void
.end method

.method private initWarningTextView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v1, 0x7f02009b

    .line 1548
    const v0, 0x7f0a0079

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1549
    .local v5, "primaryInfo":Landroid/widget/TextView;
    const v0, 0x7f0a0078

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1550
    .local v6, "secondaryInfo":Landroid/widget/TextView;
    const v0, 0x7f0a0077

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1552
    .local v7, "infoContainer":Landroid/view/View;
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    .line 1554
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->adaptBackgroundToTheme(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1555
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->adaptBackgroundToTheme(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1558
    new-instance v0, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/conversations/ui/LocalTextInputInfoBoxHandler;-><init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 1565
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$6;

    invoke-direct {v1, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$6;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 1577
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->start()V

    .line 1578
    return-void

    .line 1561
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/IMETextInputInfoBoxHandler;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    goto :goto_0
.end method

.method private insertContactText(Ljava/lang/String;)V
    .locals 7
    .param p1, "contactsInfo"    # Ljava/lang/String;

    .prologue
    .line 2837
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 2838
    .local v4, "selectionStart":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 2839
    .local v3, "selectionEnd":I
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2840
    .local v1, "previousText":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2842
    .local v0, "combinedText":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 2843
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2844
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int v2, v4, v5

    .line 2846
    .local v2, "selection":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-le v5, v6, :cond_0

    .line 2847
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 2849
    :cond_0
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2850
    return-void
.end method

.method private isAddMediaButtonAvailable()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2714
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v2, :cond_1

    .line 2718
    :cond_0
    :goto_0
    return v1

    .line 2717
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v0

    .line 2718
    .local v0, "nbrMediaItems":I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isAudio(I)Z
    .locals 1
    .param p1, "mediaType"    # I

    .prologue
    .line 757
    const/16 v0, 0x131

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAudioTooLarge(Landroid/net/Uri;)Z
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 2746
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v0

    .line 2747
    .local v0, "currentSize":I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcom/sonyericsson/conversations/ui/CheckSendRestrictions;->checkMediaSendability(Landroid/net/Uri;ILandroid/content/Context;)I

    move-result v1

    .line 2748
    .local v1, "errorCode":I
    const/16 v2, 0xcb

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isBottomToolBarVisible()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2666
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v1, :cond_1

    .line 2669
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mVirtualKeyBoardShowing:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsFullScreen:Z

    if-nez v1, :cond_0

    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCurrentConversationValid()Z
    .locals 5

    .prologue
    .line 1221
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v0

    .line 1222
    .local v0, "conversation":Lcom/sonyericsson/conversations/model/Conversation;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->getThreadId()J

    move-result-wide v1

    .line 1223
    .local v1, "threadId":J
    const-wide/16 v3, -0x1

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1, v2}, Lcom/sonyericsson/conversations/model/Conversation;->threadExists(Landroid/content/Context;J)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Conversation;->hasParticipants()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1226
    const/4 v3, 0x1

    .line 1228
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isImage(I)Z
    .locals 1
    .param p1, "mediaType"    # I

    .prologue
    .line 745
    const/16 v0, 0x12d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x133

    if-eq p1, v0, :cond_0

    const/16 v0, 0x134

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isImagePlusVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 908
    const-string v0, "*/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isImageTypeUri(Landroid/net/Uri;)Z
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 952
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sonyericsson/conversations/util/MediaUtil;->getMimeType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isLocationMediaType(I)Z
    .locals 1
    .param p1, "mediaType"    # I

    .prologue
    .line 470
    const/16 v0, 0x133

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMediaController(I)Z
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 974
    const/16 v0, 0xca

    if-lt p1, v0, :cond_0

    const/16 v0, 0xd4

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMessageSendable()Z
    .locals 1

    .prologue
    .line 1646
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isSendEmptyMessageEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPickContact(I)Z
    .locals 1
    .param p1, "requestCode"    # I

    .prologue
    .line 979
    const/16 v0, 0xd3

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPriorityAvailable()Z
    .locals 1

    .prologue
    .line 1214
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1215
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/provider/CapabilityUtil;->isPriorityAvailable()Z

    move-result v0

    goto :goto_0
.end method

.method private isRemainEnoughItemNbr()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2728
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v3, :cond_0

    .line 2735
    :goto_0
    return v2

    .line 2733
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxNbrMmsObjects()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v4

    sub-int v0, v3, v4

    .line 2735
    .local v0, "addMoreNbr":I
    if-le v0, v1, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private isSlideshow(I)Z
    .locals 1
    .param p1, "mediaType"    # I

    .prologue
    .line 761
    const/16 v0, 0x132

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubjectFieldVisible()Z
    .locals 1

    .prologue
    .line 1296
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

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

.method private isTextPlusImage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 916
    const-string v0, "image/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTextPlusVoice(Ljava/lang/String;)Z
    .locals 1
    .param p1, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 912
    const-string v0, "audio/*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isVideo(I)Z
    .locals 1
    .param p1, "mediaType"    # I

    .prologue
    .line 752
    const/16 v0, 0x12f

    if-eq p1, v0, :cond_0

    const/16 v0, 0x130

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchPickerByType(I)V
    .locals 7
    .param p1, "type"    # I

    .prologue
    .line 2195
    iget-boolean v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableAddMmsAttachment:Z

    if-nez v5, :cond_1

    .line 2196
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showCannotAddAttachmentToast()V

    .line 2271
    :cond_0
    :goto_0
    return-void

    .line 2200
    :cond_1
    const/4 v0, 0x0

    .line 2202
    .local v0, "currentSize":I
    new-instance v3, Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/16 v5, 0xca

    invoke-direct {v3, p0, v5}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;-><init>(Landroid/app/Fragment;I)V

    .line 2205
    .local v3, "mediaController":Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2207
    :pswitch_0
    :try_start_0
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchPicturePicker()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2267
    :catch_0
    move-exception v1

    .line 2269
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2210
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :pswitch_1
    const/4 v5, 0x1

    :try_start_1
    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideInputMethod(Z)V

    .line 2211
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchCamera()V

    goto :goto_0

    .line 2214
    :pswitch_2
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchVideoPicker()V

    goto :goto_0

    .line 2217
    :pswitch_3
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/sonyericsson/conversations/ui/EditorFragment;->hideInputMethod(Z)V

    .line 2218
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    .line 2219
    .local v2, "maxSize":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v0

    .line 2224
    sub-int v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchVideoCamera(I)V

    goto :goto_0

    .line 2227
    .end local v2    # "maxSize":I
    :pswitch_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSizeWithOverhead()I

    move-result v2

    .line 2228
    .restart local v2    # "maxSize":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentMessageSize()I

    move-result v0

    .line 2233
    sub-int v5, v2, v0

    invoke-virtual {v3, v5}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchAudioPicker(I)V

    goto :goto_0

    .line 2236
    .end local v2    # "maxSize":I
    :pswitch_5
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v5, :cond_0

    .line 2237
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    .line 2238
    .local v4, "message":Lcom/sonyericsson/conversations/model/Message;
    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/sonyericsson/conversations/model/SmsMessage;

    if-eqz v5, :cond_3

    .line 2239
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/Composer;->allowEmptyMessage(Z)V

    .line 2240
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/Composer;->forceMessageType(I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2243
    :cond_3
    :try_start_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->saveDraft()V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2248
    :goto_1
    :try_start_3
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/Composer;->getMessage()Lcom/sonyericsson/conversations/model/Message;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getCurrentConversationParticipants()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchSlideshowEdior(Landroid/net/Uri;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2253
    .end local v4    # "message":Lcom/sonyericsson/conversations/model/Message;
    :pswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startLocation()V

    goto :goto_0

    .line 2256
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startSketch()V

    goto :goto_0

    .line 2259
    :pswitch_8
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchContactPicker()V

    goto :goto_0

    .line 2262
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->startNotes()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 2244
    .restart local v4    # "message":Lcom/sonyericsson/conversations/model/Message;
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2205
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private onAddRecipient()V
    .locals 3

    .prologue
    .line 1374
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    if-eqz v1, :cond_0

    .line 1375
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getRecipientPicker()Landroid/content/Intent;

    move-result-object v0

    .line 1376
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    const/16 v2, 0x68

    invoke-interface {v1, v0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onAddRecipientForToFiled(Landroid/content/Intent;I)V

    .line 1378
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onAddSubject()V
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSubjectField(Z)V

    .line 1367
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 1368
    return-void
.end method

.method private onAddTextTemplate()V
    .locals 4

    .prologue
    .line 1384
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/template/sms/TextTemplateFactory;->newInstance(Landroid/content/Context;)Lcom/sonymobile/template/sms/TextTemplateManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonymobile/template/sms/TextTemplateManager;->loadAllTexTemplate()Ljava/util/ArrayList;

    move-result-object v2

    .line 1386
    .local v2, "templates":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/template/sms/TextTemplate;>;"
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getTextTemplateStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    .line 1387
    .local v1, "templateStrings":[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1388
    const v3, 0x7f070146

    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showNoteDialog(I)V

    .line 1417
    :goto_0
    return-void

    .line 1390
    :cond_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$3;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;[Ljava/lang/String;)V

    .line 1414
    .local v0, "listener":Landroid/content/DialogInterface$OnClickListener;
    const v3, 0x7f07013d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v1, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showItemsDialog(Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private onAddToContact()V
    .locals 1

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onAddToContact()V

    .line 1360
    return-void
.end method

.method private onClearWallpaper()V
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onWallpaperSelected(Landroid/net/Uri;)V

    .line 1482
    return-void
.end method

.method private onConvertToMms()V
    .locals 2

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onConvertToMessageType(I)V

    .line 1445
    return-void
.end method

.method private onConvertToSms()V
    .locals 13

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 1423
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    new-instance v5, Lcom/sonyericsson/conversations/ui/EditorFragment$4;

    invoke-direct {v5, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$4;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1431
    .local v5, "forceMmsPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x1080027

    const v3, 0x7f0700cf

    const v4, 0x104000a

    const/high16 v6, 0x1040000

    move-object v0, p0

    move-object v7, v1

    move-object v9, v1

    move-object v10, v1

    move-object v11, v1

    move-object v12, v1

    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1438
    .end local v5    # "forceMmsPositiveClickListener":Landroid/content/DialogInterface$OnClickListener;
    :goto_0
    return-void

    .line 1436
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0, v8}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onConvertToMessageType(I)V

    goto :goto_0
.end method

.method private onRemoveSubject()V
    .locals 0

    .prologue
    .line 1451
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 1452
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 1453
    return-void
.end method

.method private onSelectWallpaper()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1459
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v3

    .line 1461
    .local v3, "intentFactory":Lcom/sonyericsson/conversations/ui/IntentFactory;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getImagePicker()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sonyericsson/conversations/ui/IntentFactory;->resolveIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v4

    .line 1463
    .local v4, "intents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getCameraCapture(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/sonyericsson/conversations/ui/IntentFactory;->resolveIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v5

    .line 1465
    .local v5, "takePictureIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 1466
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1469
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 1471
    .local v0, "chooserIntent":Landroid/content/Intent;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1472
    const-string v7, "android.intent.extra.INITIAL_INTENTS"

    new-array v6, v9, [Landroid/os/Parcelable;

    invoke-interface {v4, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/os/Parcelable;

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1474
    :cond_1
    const/16 v6, 0x6a

    invoke-virtual {p0, v0, v6}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1475
    return-void
.end method

.method private onSetPriority()V
    .locals 6

    .prologue
    .line 1488
    new-instance v1, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 1490
    .local v1, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v3

    iput v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    .line 1491
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f07001f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1496
    .local v2, "items":[Ljava/lang/String;
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$5;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$5;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V

    .line 1507
    .local v0, "chooseItemListener":Landroid/content/DialogInterface$OnClickListener;
    const v3, 0x7f07001e

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(I)V

    .line 1508
    iget v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPrioritySelected:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1509
    const v3, 0x7f0700db

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1510
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "alert-dialog"

    invoke-virtual {v1, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1511
    return-void
.end method

.method private postShowProgressRunnable()Ljava/lang/Runnable;
    .locals 4

    .prologue
    .line 2995
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2997
    .local v0, "progressInfo":Ljava/lang/String;
    new-instance v1, Lcom/sonyericsson/conversations/ui/EditorFragment$25;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$25;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;)V

    .line 3002
    .local v1, "showProgress":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3003
    return-object v1
.end method

.method private refreshIMEAction()V
    .locals 4

    .prologue
    .line 1754
    const/4 v0, 0x0

    .line 1755
    .local v0, "isHaveRecipient":Z
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1756
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListActivity;->getUiController()Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->getAllInputRecipientCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getConversation()Lcom/sonyericsson/conversations/model/Conversation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/model/Conversation;->getParticipants()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1761
    :cond_1
    :goto_0
    if-eqz v0, :cond_3

    .line 1762
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v2, 0x7f070180

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 1772
    :goto_1
    return-void

    .line 1756
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1768
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const v2, 0x7f070181

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    goto :goto_1
.end method

.method private removeSubjectAndSubjectField()V
    .locals 2

    .prologue
    .line 2633
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-nez v0, :cond_2

    .line 2654
    :cond_1
    :goto_0
    return-void

    .line 2641
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 2642
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2645
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2646
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2647
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_4

    .line 2648
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/Composer;->setSubject(Ljava/lang/String;)V

    .line 2652
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 2653
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->stop()V

    goto :goto_0
.end method

.method private requestInputFocus(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2701
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2702
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/ConversationListActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/EditText;

    if-nez v0, :cond_0

    .line 2703
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2706
    :cond_0
    return-void
.end method

.method private sendButtonShallBeVisible()Z
    .locals 1

    .prologue
    .line 1676
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isTextFocused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isMessageEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendContactByText([J)V
    .locals 2
    .param p1, "contactIds"    # [J

    .prologue
    .line 3037
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$27;

    const-string v1, "composePlainTextThread"

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$27;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;[J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3057
    return-void
.end method

.method private sendContactByVcard([J)V
    .locals 2
    .param p1, "contactIds"    # [J

    .prologue
    .line 3011
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$26;

    const-string v1, "composeVcardThread"

    invoke-direct {v0, p0, v1, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$26;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Ljava/lang/String;[J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3030
    return-void
.end method

.method private setMenu(Z)V
    .locals 4
    .param p1, "isVisible"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1161
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1162
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddSubjectVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1163
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddRecipientVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1164
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToSmsMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getConvertToSmsVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1165
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToMmsMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getConvertToMmsVisibility()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1166
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRemoveSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getDeleteSubjectVisibility()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_4
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1167
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextTemplateMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddTemplateVisibility()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_5
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1168
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddToContactMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getAddContactVisibility()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_6
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1169
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetWallpaperMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_8

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getSetWallpaperVisibility()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1170
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mClearWallpaperMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->getClearWallpaperVisibility()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_8
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetPriorityMenuItem:Landroid/view/MenuItem;

    if-eqz p1, :cond_a

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isPriorityAvailable()Z

    move-result v3

    if-eqz v3, :cond_a

    :goto_9
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1173
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 1162
    goto/16 :goto_0

    :cond_2
    move v0, v2

    .line 1163
    goto :goto_1

    :cond_3
    move v0, v2

    .line 1164
    goto :goto_2

    :cond_4
    move v0, v2

    .line 1165
    goto :goto_3

    :cond_5
    move v0, v2

    .line 1166
    goto :goto_4

    :cond_6
    move v0, v2

    .line 1167
    goto :goto_5

    :cond_7
    move v0, v2

    .line 1168
    goto :goto_6

    :cond_8
    move v0, v2

    .line 1169
    goto :goto_7

    :cond_9
    move v0, v2

    .line 1170
    goto :goto_8

    :cond_a
    move v1, v2

    .line 1171
    goto :goto_9
.end method

.method private setPreBtnVisibility(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    const/16 v1, 0x8

    .line 3060
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    .line 3073
    :goto_0
    return-void

    .line 3064
    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isPreviewButtonAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3065
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3067
    :cond_1
    if-eqz p1, :cond_2

    .line 3068
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3070
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showCannotAddAttachmentToast()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2287
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEditButton:Z

    if-eqz v0, :cond_0

    .line 2288
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070147

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2296
    :goto_0
    return-void

    .line 2292
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070065

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "iconResId"    # I
    .param p3, "messageId"    # I
    .param p4, "positiveBtnResId"    # I
    .param p5, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p6, "negativeBtnResId"    # I
    .param p7, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p8, "neutralBtnResId"    # I
    .param p9, "neutralButtonClickListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p10, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p11, "adapter"    # Landroid/widget/ListAdapter;
    .param p12, "adpterListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 2384
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 2386
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 2387
    invoke-virtual {v0, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 2388
    invoke-virtual {v0, p3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 2389
    invoke-virtual {v0, p4, p5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2390
    invoke-virtual {v0, p6, p7}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2391
    invoke-virtual {v0, p8, p9}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 2392
    invoke-virtual {v0, p10}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2393
    invoke-virtual {v0, p11, p12}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2395
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2396
    return-void
.end method

.method private showHideSendButton()V
    .locals 2

    .prologue
    .line 1655
    const/16 v0, 0x8

    .line 1656
    .local v0, "visibleState":I
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->sendButtonShallBeVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1657
    const/4 v0, 0x0

    .line 1659
    :cond_0
    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1663
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 1666
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 1667
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1669
    :cond_3
    return-void
.end method

.method private showItemsDialog(Ljava/lang/String;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "itemlistener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1527
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 1529
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1530
    invoke-virtual {v0, p2, p3}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1532
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1533
    return-void
.end method

.method private showMasterPileWhenHidden()V
    .locals 1

    .prologue
    .line 2694
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasMedia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2695
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->show()V

    .line 2696
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2698
    :cond_0
    return-void
.end method

.method private showNoteDialog(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 1536
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 1538
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    const v1, 0x7f07012c

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 1539
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 1540
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIconAttribute(I)V

    .line 1541
    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(I)V

    .line 1542
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 1544
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "alert-dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1545
    return-void
.end method

.method private declared-synchronized showProgressDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 2781
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2785
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2786
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPd:Landroid/app/ProgressDialog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2788
    :cond_1
    monitor-exit p0

    return-void

    .line 2781
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private showSendContactDialog(ILandroid/content/Intent;)V
    .locals 10
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 2798
    const/4 v9, -0x1

    if-ne p1, v9, :cond_0

    if-nez p2, :cond_1

    .line 2830
    :cond_0
    :goto_0
    return-void

    .line 2802
    :cond_1
    const-string v9, "com.sonyericsson.android.socialphonebook.intent.extra.URIS"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2804
    .local v3, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v3, :cond_0

    .line 2808
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2809
    .local v7, "size":I
    if-lez v7, :cond_0

    .line 2813
    new-array v2, v7, [J

    .line 2814
    .local v2, "contactIds":[J
    const/4 v5, 0x0

    .line 2815
    .local v5, "index":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    .line 2816
    .local v8, "uriContact":Landroid/net/Uri;
    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2817
    .local v0, "contactId":J
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "index":I
    .local v6, "index":I
    aput-wide v0, v2, v5

    move v5, v6

    .line 2818
    .end local v6    # "index":I
    .restart local v5    # "index":I
    goto :goto_1

    .line 2819
    .end local v0    # "contactId":J
    .end local v8    # "uriContact":Landroid/net/Uri;
    :cond_2
    const/4 v9, 0x1

    if-ne v7, v9, :cond_4

    .line 2820
    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    if-nez v9, :cond_3

    .line 2822
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSendContact()V

    .line 2824
    :cond_3
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSendContactDialog([J)V

    goto :goto_0

    .line 2828
    :cond_4
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->sendContactByText([J)V

    goto :goto_0
.end method

.method private showSendContactDialog([J)V
    .locals 13
    .param p1, "contactIds"    # [J

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 2961
    new-instance v12, Lcom/sonyericsson/conversations/ui/EditorFragment$24;

    invoke-direct {v12, p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment$24;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;[J)V

    .line 2983
    .local v12, "sendcontactListener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f070166

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v6, v2

    move-object v7, v5

    move v8, v2

    move-object v9, v5

    move-object v10, v5

    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2987
    return-void
.end method

.method private showSubjectField(Z)V
    .locals 3
    .param p1, "takeFocus"    # Z

    .prologue
    .line 2487
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2488
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectChangeListener:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 2489
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->start()V

    .line 2490
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2491
    if-eqz p1, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2494
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    .line 2495
    .local v0, "subject":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2498
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2499
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 2503
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->requestEditorFocus(Landroid/view/View;)V

    .line 2505
    .end local v0    # "subject":Ljava/lang/String;
    :cond_2
    return-void

    .line 2500
    .restart local v0    # "subject":Ljava/lang/String;
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2501
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startAddmediaTask([Ljava/lang/Object;)V
    .locals 2
    .param p1, "object"    # [Ljava/lang/Object;

    .prologue
    .line 1029
    if-nez p1, :cond_0

    .line 1038
    :goto_0
    return-void

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1036
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/EditorFragment$1;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    .line 1037
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private startLocation()V
    .locals 14

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1920
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->hasLocationImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1921
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f070116

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1961
    :goto_0
    return-void

    .line 1926
    :cond_0
    new-instance v13, Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/16 v0, 0xca

    invoke-direct {v13, p0, v0}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;-><init>(Landroid/app/Fragment;I)V

    .line 1929
    .local v13, "locationController":Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    new-instance v12, Lcom/sonyericsson/conversations/ui/EditorFragment$17;

    invoke-direct {v12, p0, v13}, Lcom/sonyericsson/conversations/ui/EditorFragment$17;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Lcom/sonyericsson/conversations/ui/util/AddMediaController;)V

    .line 1956
    .local v12, "locationListener":Landroid/content/DialogInterface$OnClickListener;
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020004

    iget-object v11, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    move-object v0, p0

    move v4, v3

    move v6, v3

    move-object v7, v5

    move v8, v3

    move-object v9, v5

    move-object v10, v5

    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showDialog(Ljava/lang/String;IIILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method private startNotes()V
    .locals 5

    .prologue
    .line 1910
    :try_start_0
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/16 v2, 0xca

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;-><init>(Landroid/app/Fragment;I)V

    .line 1912
    .local v0, "controller":Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchNotes()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1917
    .end local v0    # "controller":Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    :goto_0
    return-void

    .line 1913
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f070071

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private startSketch()V
    .locals 2

    .prologue
    .line 1903
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/16 v1, 0xca

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;-><init>(Landroid/app/Fragment;I)V

    .line 1905
    .local v0, "sketchController":Lcom/sonyericsson/conversations/ui/util/AddMediaController;
    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->launchSketch()V

    .line 1906
    return-void
.end method

.method private updateBottomMarginAndToolbarVisibility()V
    .locals 2

    .prologue
    .line 2678
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBottomPanelToolbar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 2679
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBottomPanelToolbar:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isBottomToolBarVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2681
    :cond_0
    return-void

    .line 2679
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateCounterAndButtons()V
    .locals 8

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2537
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    if-nez v3, :cond_1

    .line 2572
    :cond_0
    :goto_0
    return-void

    .line 2540
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditButton:Landroid/widget/Button;

    if-eqz v3, :cond_3

    .line 2542
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/mms/MmsConfig;->isSlideshowEditorEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEditButton:Z

    .line 2545
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEditButton:Z

    if-nez v3, :cond_5

    move v2, v5

    .line 2548
    .local v2, "showAddMediaButton":Z
    :goto_2
    if-eqz v2, :cond_6

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isAddMediaButtonAvailable()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v5

    :goto_3
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableAddMmsAttachment:Z

    .line 2550
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_7

    move v3, v4

    :goto_4
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2551
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditButton:Landroid/widget/Button;

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEditButton:Z

    if-eqz v3, :cond_8

    move v3, v4

    :goto_5
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2554
    .end local v2    # "showAddMediaButton":Z
    :cond_3
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->getCurrentMediaItemNbr()I

    move-result v1

    .line 2557
    .local v1, "nbrMediaItems":I
    const/4 v3, 0x2

    if-le v1, v3, :cond_9

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2558
    const v3, 0x7f0700c2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-virtual {p0, v3, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2561
    .local v0, "fileCount":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddedMediaCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2562
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddedMediaCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2568
    .end local v0    # "fileCount":Ljava/lang/String;
    :goto_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->checkAndUpdateEditorState()V

    .line 2571
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateBottomMarginAndToolbarVisibility()V

    goto :goto_0

    .end local v1    # "nbrMediaItems":I
    :cond_4
    move v3, v4

    .line 2542
    goto :goto_1

    :cond_5
    move v2, v4

    .line 2545
    goto :goto_2

    .restart local v2    # "showAddMediaButton":Z
    :cond_6
    move v3, v4

    .line 2548
    goto :goto_3

    :cond_7
    move v3, v6

    .line 2550
    goto :goto_4

    :cond_8
    move v3, v6

    .line 2551
    goto :goto_5

    .line 2564
    .end local v2    # "showAddMediaButton":Z
    .restart local v1    # "nbrMediaItems":I
    :cond_9
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddedMediaCounter:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method private updateMasterPile()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2628
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z

    .line 2629
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z

    .line 2630
    return-void
.end method

.method private updateMediaPreview(Z)V
    .locals 5
    .param p1, "animate"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2581
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-nez v1, :cond_1

    .line 2625
    :cond_0
    :goto_0
    return-void

    .line 2585
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    if-eqz v1, :cond_2

    .line 2586
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2588
    :cond_2
    if-nez p1, :cond_3

    .line 2589
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/PileView;->hide()V

    .line 2590
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2591
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    goto :goto_0

    .line 2592
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2593
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsSlideshow()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableTextInput(Z)V

    .line 2595
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getSupportedMediaItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2597
    .local v0, "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2598
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2604
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileIsExpanded:Z

    if-nez v1, :cond_0

    .line 2605
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/PileView;->show()V

    .line 2606
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2607
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-interface {v1, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->requestEditorFocus(Landroid/view/View;)V

    goto :goto_0

    .end local v0    # "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_4
    move v1, v3

    .line 2593
    goto :goto_1

    .line 2610
    .restart local v0    # "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/PileView;->hide()V

    .line 2611
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2612
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    goto :goto_0

    .line 2615
    .end local v0    # "mediaItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2618
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->enableTextInput(Z)V

    .line 2619
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2620
    invoke-virtual {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 2621
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/PileView;->show()V

    .line 2622
    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setPreBtnVisibility(Z)V

    .line 2623
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddedMediaCounter:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateMenuEditItems(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1181
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToSmsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToMmsMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRemoveSubjectMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1185
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextTemplateMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1187
    :cond_0
    return-void
.end method

.method private updatePriorityIcon()V
    .locals 2

    .prologue
    .line 2523
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessagePriority()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2534
    :goto_0
    return-void

    .line 2525
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2526
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2529
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 2523
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSubjectInputView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2463
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getMessageType()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/Composer;->isUserDefinedSubject(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2468
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSubjectField(Z)V

    .line 2474
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setShowEmptySubject(Z)V

    .line 2475
    return-void

    .line 2469
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isShowEmptySubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2472
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    goto :goto_0
.end method

.method private updateTextInputView()V
    .locals 3

    .prologue
    .line 2435
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-nez v1, :cond_1

    .line 2457
    :cond_0
    :goto_0
    return-void

    .line 2439
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->update()V

    .line 2442
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->holdsAlienContent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2446
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->getText()Ljava/lang/String;

    move-result-object v0

    .line 2448
    .local v0, "messageText":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v1, :cond_2

    .line 2449
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2453
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 2455
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->clear()V

    goto :goto_0
.end method


# virtual methods
.method public cleanupSendAnimation()V
    .locals 2

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->removeSnapshot()V

    .line 3125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->setHeightWrapContent()V

    .line 3127
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->removeSnapshot()V

    .line 3128
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/PileView;->setDisableHideAnimation(Z)V

    .line 3130
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposerLinearLayout:Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposerLinearLayout:Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->createDefaultHeightAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->setHeightAnimator(Landroid/animation/ObjectAnimator;)V

    .line 3131
    return-void
.end method

.method public getAddRecipientVisibility()Z
    .locals 3

    .prologue
    .line 1280
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a002b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1281
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComposerSendAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    .line 3094
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposerLinearLayout:Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->createDefaultHeightAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getPileViewSendAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/PileView;->getHideAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method

.method public getTextSendAnimator()Landroid/animation/Animator;
    .locals 1

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->getSlideSnapshotUpAnimator()Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public hideInputMethod(Z)V
    .locals 4
    .param p1, "checkFullScreen"    # Z

    .prologue
    .line 2351
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2353
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2354
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 2355
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 2356
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2359
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public hideSendButtonProgressBar()V
    .locals 2

    .prologue
    .line 3145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 3146
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3147
    return-void
.end method

.method public isShowEmptySubject()Z
    .locals 1

    .prologue
    .line 2478
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    return v0
.end method

.method public isTextFocused()Z
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1042
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1043
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;->onEditorFragmentAttached()V

    .line 1046
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 989
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isMediaController(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isPickContact(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/AddMediaController;

    const/16 v1, 0xca

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;-><init>(Landroid/app/Fragment;I)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/conversations/ui/util/AddMediaController;->handleActivityResult(IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 995
    const/16 p1, 0xc9

    .line 998
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1022
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1026
    :cond_1
    :goto_0
    return-void

    .line 1000
    :sswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPreBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0

    .line 1004
    :sswitch_1
    if-eqz p3, :cond_1

    .line 1005
    invoke-direct {p0, p3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleSelectWallpaper(Landroid/content/Intent;)V

    goto :goto_0

    .line 1010
    :sswitch_2
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleAddMediaResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1014
    :sswitch_3
    invoke-direct {p0, p3, p2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->handleVideoEditResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1018
    :sswitch_4
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showSendContactDialog(ILandroid/content/Intent;)V

    goto :goto_0

    .line 998
    nop

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_0
        0x6a -> :sswitch_1
        0xc9 -> :sswitch_2
        0xd3 -> :sswitch_4
        0x12d -> :sswitch_3
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "config"    # Landroid/content/res/Configuration;

    .prologue
    .line 2658
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2660
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->showMasterPileWhenHidden()V

    .line 2661
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->requestInputFocus(Landroid/content/res/Configuration;)V

    .line 2662
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateBottomMarginAndToolbarVisibility()V

    .line 2663
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 389
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 390
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEnableForceMessageType()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEnableForceMessageType:Z

    .line 391
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflate"    # Landroid/view/MenuInflater;

    .prologue
    .line 1116
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1118
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1119
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0f0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1121
    const v1, 0x7f0a00c2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddSubjectMenuItem:Landroid/view/MenuItem;

    .line 1123
    const v1, 0x7f0a00c3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddRecipientMenuItem:Landroid/view/MenuItem;

    .line 1129
    const v1, 0x7f0a00c0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToSmsMenuItem:Landroid/view/MenuItem;

    .line 1130
    const v1, 0x7f0a00c1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mConvertToMmsMenuItem:Landroid/view/MenuItem;

    .line 1133
    const v1, 0x7f0a00c4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRemoveSubjectMenuItem:Landroid/view/MenuItem;

    .line 1134
    const v1, 0x7f0a00c5

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextTemplateMenuItem:Landroid/view/MenuItem;

    .line 1137
    const v1, 0x7f0a00c6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddToContactMenuItem:Landroid/view/MenuItem;

    .line 1139
    const v1, 0x7f0a00c9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetPriorityMenuItem:Landroid/view/MenuItem;

    .line 1142
    const v1, 0x7f0a00c7

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSetWallpaperMenuItem:Landroid/view/MenuItem;

    .line 1143
    const v1, 0x7f0a00c8

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mClearWallpaperMenuItem:Landroid/view/MenuItem;

    .line 1145
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v1, :cond_0

    .line 1146
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMenuEditItems(Z)V

    .line 1148
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 396
    const v1, 0x7f03001a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    .line 399
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initComposerLinearLayout()V

    .line 402
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initEditContainer()V

    .line 403
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSubjectInput()V

    .line 404
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initTextInput()V

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V

    .line 408
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initEditButton()V

    .line 409
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initSendButton()V

    .line 410
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initPreviewButton()V

    .line 413
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initAddMedia()V

    .line 414
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initBottomMarginAndToolBar()V

    .line 415
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initMediaCounter()V

    .line 416
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initMasterPile()V

    .line 419
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0076

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mPriorityView:Landroid/widget/ImageView;

    .line 421
    invoke-virtual {p0, v3}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 423
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    .line 424
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v2, 0x7f0a0060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 426
    .local v0, "activityRootView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/conversations/ui/EditorFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/EditorFragment;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 444
    .end local v0    # "activityRootView":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 1050
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1055
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1057
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1059
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 1060
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    .line 1063
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 1065
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->stop()V

    .line 1066
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    if-eqz v0, :cond_2

    .line 1070
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 1071
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->stop()V

    .line 1074
    :cond_2
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 1075
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->removeMessageContentAdapterFromPool(J)V

    .line 1076
    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    .line 1079
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    if-eqz v0, :cond_4

    .line 1080
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/PileView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/PileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1082
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1085
    :cond_4
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    .line 1086
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->removeMasterPileViewFromPool(J)V

    .line 1087
    iput-wide v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    .line 1090
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    if-eqz v0, :cond_6

    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 1092
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;)V

    .line 1095
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    if-eqz v0, :cond_7

    .line 1096
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;->removeAllMenuItems()V

    .line 1097
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaListAdapter:Lcom/sonyericsson/conversations/ui/AddMediaListAdapter;

    .line 1100
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    if-eqz v0, :cond_8

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;->removeAllMenuItems()V

    .line 1102
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSelectLocationListAdapter:Lcom/sonyericsson/conversations/location/ui/SelectLocationListAdapter;

    .line 1105
    :cond_8
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    if-eqz v0, :cond_9

    .line 1106
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SendContactListAdapter;->removeAllMenuItems()V

    .line 1107
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendContactListAdapter:Lcom/sonyericsson/conversations/ui/SendContactListAdapter;

    .line 1110
    :cond_9
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    if-eqz v0, :cond_a

    .line 1111
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mAddMediaTask:Lcom/sonyericsson/conversations/ui/EditorFragment$AddMediaTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 1113
    :cond_a
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    .line 450
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 451
    return-void
.end method

.method public onEditorContentChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 3077
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsActive:Z

    if-nez v0, :cond_0

    .line 3083
    :goto_0
    return-void

    .line 3081
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRecipientsEmpty:Z

    .line 3082
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->checkAndUpdateEditorState()V

    goto :goto_0

    .line 3081
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onKeyboardStateChanged(Z)V
    .locals 2
    .param p1, "virtualKeyBoardShowing"    # Z

    .prologue
    .line 2684
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mVirtualKeyBoardShowing:Z

    .line 2685
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateBottomMarginAndToolbarVisibility()V

    .line 2686
    if-eqz p1, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mRequestBodyInputLayout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2691
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 1322
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1354
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1324
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddSubject()V

    goto :goto_0

    .line 1327
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddRecipient()V

    goto :goto_0

    .line 1330
    :pswitch_2
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddTextTemplate()V

    goto :goto_0

    .line 1333
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSelectWallpaper()V

    goto :goto_0

    .line 1336
    :pswitch_4
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onClearWallpaper()V

    goto :goto_0

    .line 1339
    :pswitch_5
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToSms()V

    goto :goto_0

    .line 1342
    :pswitch_6
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onConvertToMms()V

    goto :goto_0

    .line 1345
    :pswitch_7
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onRemoveSubject()V

    goto :goto_0

    .line 1348
    :pswitch_8
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddToContact()V

    goto :goto_0

    .line 1351
    :pswitch_9
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->onSetPriority()V

    goto :goto_0

    .line 1322
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_9
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1152
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->setMenu(Z)V

    .line 1153
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2008
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 2009
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isTextMessagingEnabled()Z

    move-result v0

    .line 2010
    .local v0, "isTextMessagingEnabled":Z
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eq v0, v2, :cond_0

    .line 2011
    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    .line 2012
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMenuEditItems(Z)V

    .line 2014
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-nez v2, :cond_1

    .line 2015
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 2016
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c000f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 2022
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 2023
    invoke-direct {p0, v3}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 2024
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 2026
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    const v4, 0x7f0a0069

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2028
    .local v1, "sendButtonContainer":Landroid/view/View;
    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsTextMessagingEnabled:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2030
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->checkAndUpdateEditorState()V

    .line 2031
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 2035
    .end local v1    # "sendButtonContainer":Landroid/view/View;
    :cond_0
    iput-boolean v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSlideShowEditing:Z

    .line 2036
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMasterPile()V

    .line 2037
    return-void

    .line 2019
    :cond_1
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHintTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 2028
    .restart local v1    # "sendButtonContainer":Landroid/view/View;
    :cond_2
    const/16 v2, 0x8

    goto :goto_1
.end method

.method public prepareForSendAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3106
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3107
    .local v0, "bodyInputHint":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 3108
    .local v1, "subjectImputHint":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3109
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3110
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->storeCurrentContentAsSnapshot()V

    .line 3111
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditContainer:Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/view/SnapshotLinearLayout;->setHeightMatchParent()V

    .line 3112
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3113
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 3115
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/PileView;->storeCurrentContentAsSnapshot()V

    .line 3116
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sonyericsson/conversations/ui/PileView;->setDisableHideAnimation(Z)V

    .line 3118
    return-void
.end method

.method public requestKeyboardFocus()V
    .locals 3

    .prologue
    .line 2418
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 2419
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2420
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2421
    .local v0, "keyboard":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 2423
    .end local v0    # "keyboard":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    .prologue
    .line 2887
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mCallback:Lcom/sonyericsson/conversations/ui/EditorFragment$EditorFragmentCallback;

    .line 2888
    return-void
.end method

.method public setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V
    .locals 6
    .param p1, "composer"    # Lcom/sonyericsson/conversations/ui/Composer;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 2915
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    .line 2916
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 2917
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    if-eqz v0, :cond_0

    .line 2918
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->setTextAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler$TextAddedOrDeletedListener;)V

    .line 2919
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->stop()V

    .line 2920
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mTextInputInfoBoxHandler:Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    .line 2921
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mEditorView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V

    .line 2924
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    if-eqz v0, :cond_2

    .line 2925
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->setSubjectAddedOrDeletedListener(Lcom/sonyericsson/conversations/ui/SubjectTextWatcher$SubjectAddedOrDeletedListener;)V

    .line 2926
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;->stop()V

    .line 2927
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/Composer;->getSubject()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->isSubjectFieldVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2931
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->removeSubjectAndSubjectField()V

    .line 2933
    :cond_1
    new-instance v0, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposer:Lcom/sonyericsson/conversations/ui/Composer;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectInput:Landroid/widget/EditText;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;-><init>(Lcom/sonyericsson/conversations/ui/Composer;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSubjectTextWatcher:Lcom/sonyericsson/conversations/ui/SubjectTextWatcher;

    .line 2936
    :cond_2
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_3

    .line 2937
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->removeMessageContentAdapterFromPool(J)V

    .line 2938
    iput-wide v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapterKey:J

    .line 2941
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    if-eqz v0, :cond_4

    .line 2942
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/PileView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2943
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/PileView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2944
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 2947
    :cond_4
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_5

    .line 2948
    iget-wide v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/SharedPileDataPool;->removeMasterPileViewFromPool(J)V

    .line 2949
    iput-wide v4, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPileKey:J

    .line 2952
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    if-eqz v0, :cond_6

    .line 2953
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setComposer(Lcom/sonyericsson/conversations/ui/Composer;)V

    .line 2954
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mContentAdapter:Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;->setOnContentDeletedListener(Lcom/sonyericsson/conversations/ui/MessageContentAdapter$OnContentDeletedListener;)V

    .line 2955
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->initMasterPile()V

    .line 2958
    :cond_6
    return-void
.end method

.method public setComposerSendAnimator(Landroid/animation/ObjectAnimator;)V
    .locals 1
    .param p1, "composerSendAnimator"    # Landroid/animation/ObjectAnimator;

    .prologue
    .line 3098
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mComposerLinearLayout:Lcom/sonyericsson/conversations/view/ComposerLinearLayout;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/view/ComposerLinearLayout;->setHeightAnimator(Landroid/animation/ObjectAnimator;)V

    .line 3099
    return-void
.end method

.method public setMenuVisibleFlag(Z)V
    .locals 0
    .param p1, "isVisible"    # Z

    .prologue
    .line 1156
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mIsMenuVisible:Z

    .line 1157
    return-void
.end method

.method public setShowEmptySubject(Z)V
    .locals 0
    .param p1, "showEmptySubject"    # Z

    .prologue
    .line 2482
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mShowEmptySubject:Z

    .line 2483
    return-void
.end method

.method public showSendButtonProgressBar()V
    .locals 2

    .prologue
    .line 3137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3138
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment;->mSendButtonProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3139
    return-void
.end method

.method protected showToast(II)Landroid/widget/Toast;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 464
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 465
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 466
    return-object v0
.end method

.method public updateComposerViews(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    .line 2404
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsSubjectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2405
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateSubjectInputView()V

    .line 2408
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateTextInputView()V

    .line 2409
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateMediaPreview(Z)V

    .line 2410
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updateCounterAndButtons()V

    .line 2411
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->updatePriorityIcon()V

    .line 2412
    return-void
.end method
