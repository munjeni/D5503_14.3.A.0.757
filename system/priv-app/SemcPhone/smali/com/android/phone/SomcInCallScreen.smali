.class public Lcom/android/phone/SomcInCallScreen;
.super Landroid/app/Activity;
.source "SomcInCallScreen.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/CallView$CallViewActionListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/SomcInCallScreen$26;,
        Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;,
        Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;,
        Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;,
        Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;",
        "Lcom/android/phone/CallTime$OnTickListener;",
        "Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;",
        "Lcom/android/phone/CallView$CallViewActionListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/android/phone/ItemWithIcon;",
        ">;>;"
    }
.end annotation


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAudioErrorDialog:Landroid/app/AlertDialog;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private final mCallRecordTimerRunnable:Ljava/lang/Runnable;

.field private mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

.field mCallTime:Lcom/android/phone/CallTime;

.field private mCallView:Lcom/android/phone/CallView;

.field public final mCallWidgetListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

.field private mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

.field private mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

.field private mContext:Landroid/content/Context;

.field private mDTMFToneEnabled:Z

.field private mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

.field private mEmergencyCallRetryCount:I

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field mHeadsetConnected:Z

.field mIsDestroyed:Z

.field mIsEndOrRejectBtPressed:Z

.field mIsForegroundActivity:Z

.field private mIsForegroundActivityForProximity:Z

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

.field private mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSystemProvided:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWidgetManagerConnection:Landroid/content/ServiceConnection;

.field private oldNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 155
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mHeadsetConnected:Z

    .line 159
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    .line 162
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContentShareProvider:Lcom/sonyericsson/feature/IContentShareProvider;

    .line 199
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 202
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    .line 204
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 209
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 237
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    .line 256
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 308
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    .line 338
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    .line 387
    new-instance v0, Lcom/android/phone/SomcInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$1;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    .line 559
    new-instance v0, Lcom/android/phone/SomcInCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$2;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;

    .line 4805
    new-instance v0, Lcom/android/phone/SomcInCallScreen$24;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$24;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    .line 4823
    new-instance v0, Lcom/android/phone/SomcInCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$25;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetListener:Lcom/android/phone/widget/SomcCallWidgetManager$CallWidgetListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/phone/SomcInCallScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 131
    iput-boolean p1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/phone/SomcInCallScreen;ZZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/phone/SomcInCallScreen;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/phone/SomcInCallScreen;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/SomcInCallScreen;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecordTimerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/phone/SomcInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/app/AlertDialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/SomcSoundHandling;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/phone/SomcInCallScreen;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->finishIfNotInUse(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/widget/SomcCallWidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/widget/SomcCallWidgetManager;)Lcom/android/phone/widget/SomcCallWidgetManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Lcom/android/phone/widget/SomcCallWidgetManager;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/SomcInCallScreen;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/phone/SomcInCallScreen;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/app/Dialog;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/phone/SomcInCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # C

    .prologue
    .line 131
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcInCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 2954
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2955
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2956
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2958
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 2959
    const-string v0, "show vm setting, finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2960
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2961
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2964
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2965
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2966
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2967
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2968
    return-void
.end method

.method private asyncUpdateContactImage(Lcom/android/phone/SomcCallerInfo;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4311
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p1, Lcom/android/phone/SomcCallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 4313
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4314
    :cond_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 4315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The requested Uri ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") is being loaded already."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Ignoret the duplicate load request. (or null)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4336
    :cond_1
    :goto_0
    return-void

    .line 4321
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 4322
    if-nez v1, :cond_3

    .line 4323
    const-string v0, "SomcInCallScreen"

    const-string v1, "photoUri became null. Show default avatar icon"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4327
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "SomcInCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin loading image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4332
    :cond_4
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    .line 4333
    const/16 v0, 0x70

    new-instance v2, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;

    invoke-direct {v2, v5, p1, v5}, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v0, p0, v1, p0, v2}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 2868
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2869
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2870
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2871
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 2887
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2895
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2896
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    .line 2898
    :cond_2
    return-void
.end method

.method private checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1880
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1882
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    .line 1897
    :cond_0
    :goto_0
    return v0

    .line 1887
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1888
    if-eqz v1, :cond_0

    .line 1890
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 1891
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-eq v1, v2, :cond_0

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    if-eq v1, v2, :cond_0

    .line 1896
    invoke-static {p1}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 1897
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isMessagingEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2271
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2272
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2289
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2294
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    if-nez v0, :cond_2

    .line 2295
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2297
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->goToSleep()V

    .line 2300
    :cond_2
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    .line 2301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 2302
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 2303
    return-void
.end method

.method private dismissAllDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3784
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3785
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3786
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3787
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3788
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3789
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 3791
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_3

    .line 3792
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 3793
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3794
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3795
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3797
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 3798
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    .line 3799
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3800
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3801
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 3803
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 3804
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    .line 3805
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3806
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3807
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3809
    :cond_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 3810
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3811
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3812
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 3815
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 3816
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3817
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3818
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 3821
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 3822
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3823
    :cond_c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3824
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3827
    :cond_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_f

    .line 3828
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "- DISMISSING mPopupMenu."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3829
    :cond_e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 3830
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 3833
    :cond_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_11

    .line 3834
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "- DISMISSING mAudioErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3835
    :cond_10
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3836
    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mAudioErrorDialog:Landroid/app/AlertDialog;

    .line 3839
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissProgressIndication()V

    .line 3840
    return-void
.end method

.method private dismissProgressIndication()V
    .locals 1

    .prologue
    .line 3908
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissProgressIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3909
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    .line 3910
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 3911
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3913
    :cond_1
    return-void
.end method

.method private displayMmiInfo(Lcom/android/internal/telephony/MmiCode;)Landroid/app/Dialog;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4690
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/internal/telephony/MmiCode;->isCancelable()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 4692
    :goto_0
    if-nez v0, :cond_2

    .line 4693
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "not a USSD code, displaying status toast."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4694
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v1, 0x7f0b01e7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4695
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4696
    const/4 v0, 0x0

    .line 4718
    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    .line 4690
    goto :goto_0

    .line 4698
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "running USSD code, displaying indeterminate progress."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4701
    :cond_3
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 4702
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v4, 0x7f0b01e8

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4703
    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 4704
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4705
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4706
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0b009f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/phone/SomcInCallScreen$23;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcInCallScreen$23;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 4716
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    goto :goto_1
.end method

.method private dontAddVoiceMailNumber()V
    .locals 2

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 2972
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2973
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2975
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 2976
    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2978
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->clearPendingCallStatusCode()V

    .line 2979
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_2

    .line 2980
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2982
    :cond_2
    return-void
.end method

.method private enableCallRecorderMenuItems(Landroid/view/Menu;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1314
    const v1, 0x7f0700f4

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1315
    const v2, 0x7f0700f5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 1317
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v3}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1318
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1327
    :goto_0
    return-void

    .line 1320
    :cond_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1323
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private enableNavigationBar(ZZZZ)V
    .locals 1
    .param p1, "isBackEnable"    # Z
    .param p2, "isHomeEnable"    # Z
    .param p3, "isRecentEnable"    # Z
    .param p4, "isSearchEnable"    # Z

    .prologue
    .line 4638
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarBack(Z)V

    .line 4639
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p2}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarHome(Z)V

    .line 4640
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarRecent(Z)V

    .line 4641
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, p4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableNavigationBarSearch(Z)V

    .line 4642
    return-void
.end method

.method private endSomcInCallScreenSession(Z)V
    .locals 2

    .prologue
    .line 4183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endSomcInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")...  phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4184
    if-eqz p1, :cond_1

    .line 4185
    const-string v0, "SomcInCallScreen"

    const-string v1, "endSomcInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4186
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 4196
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    .line 4197
    return-void

    .line 4188
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4190
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->clear()V

    .line 4191
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_2

    .line 4192
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->clearStack()V

    .line 4194
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    goto :goto_0
.end method

.method private finishIfNotInUse(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3381
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3382
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishIfNotInUse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3384
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    .line 3389
    :goto_0
    return-void

    .line 3386
    :cond_1
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "finishIfNotInUse: Attempted finish while application is still running! Message ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "staying in SomcInCallScreen"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 4672
    const/4 v0, 0x0

    .line 4673
    .local v0, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 4674
    .local v1, "o":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 4675
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4679
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 4676
    .restart local v1    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_0

    .line 4677
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v1    # "o":Ljava/lang/Object;
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    goto :goto_0
.end method

.method private getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;
    .locals 4

    .prologue
    .line 4651
    .line 4652
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 4653
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4654
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4662
    :goto_0
    return-object v0

    .line 4655
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4658
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 4660
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private handleBackKey()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 3342
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    .line 3343
    const-string v2, "handleBackKey()..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3345
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->isRejectMsgListOpened()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3346
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeRejectMsgList()V

    .line 3370
    :cond_1
    :goto_0
    return v0

    .line 3349
    :cond_2
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3354
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3355
    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3356
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move v0, v1

    .line 3361
    goto :goto_0

    .line 3365
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v2}, Lcom/android/phone/CallView;->handleBackKey()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    .line 3370
    goto :goto_0
.end method

.method private handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .param p1, "somcCallerInfo"    # Lcom/android/phone/SomcCallerInfo;

    .prologue
    .line 4343
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4345
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4370
    :cond_0
    :goto_0
    return-void

    .line 4348
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4349
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 4353
    new-instance v0, Lcom/android/phone/SomcInCallScreen$19;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/SomcInCallScreen$19;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    .line 4368
    .local v0, "queryCityIdTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    .line 4369
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryCityIdTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleLandOwnerInfo(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .param p1, "somcCallerInfo"    # Lcom/android/phone/SomcCallerInfo;

    .prologue
    .line 4377
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4379
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4404
    :cond_0
    :goto_0
    return-void

    .line 4382
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    .line 4383
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryLandOwnerTask:Landroid/os/AsyncTask;

    if-nez v1, :cond_0

    .line 4387
    new-instance v0, Lcom/android/phone/SomcInCallScreen$20;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/SomcInCallScreen$20;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    .line 4402
    .local v0, "queryLandOwnerTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    iput-object v0, p1, Lcom/android/phone/SomcCallerInfo;->queryLandOwnerTask:Landroid/os/AsyncTask;

    .line 4403
    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->queryLandOwnerTask:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 2901
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2902
    const-string v0, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2904
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 2905
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2907
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 2908
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2910
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b009f

    new-instance v4, Lcom/android/phone/SomcInCallScreen$15;

    invoke-direct {v4, p0, v0}, Lcom/android/phone/SomcInCallScreen$15;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x7f0b0000

    new-instance v4, Lcom/android/phone/SomcInCallScreen$14;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/SomcInCallScreen$14;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 2930
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/SomcInCallScreen$16;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SomcInCallScreen$16;-><init>(Lcom/android/phone/SomcInCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2938
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/phone/SomcInCallScreen$17;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$17;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2948
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2950
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2951
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4

    .prologue
    .line 4422
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/internal/telephony/Connection;

    if-nez v0, :cond_0

    .line 4423
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a connection!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4425
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4426
    if-nez v0, :cond_1

    .line 4446
    :goto_0
    return-void

    .line 4427
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/Connection$PostDialState;

    if-nez v1, :cond_2

    .line 4428
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not a Connection.PostDialState!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4430
    :cond_2
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4431
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4433
    :cond_3
    sget-object v2, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 4436
    :pswitch_0
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4437
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 4438
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 4439
    invoke-direct {p0, v0, v1}, Lcom/android/phone/SomcInCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 4433
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V
    .locals 3
    .param p1, "somcCallerInfo"    # Lcom/android/phone/SomcCallerInfo;

    .prologue
    const/4 v1, 0x0

    .line 3246
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3248
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p1, Lcom/android/phone/SomcCallerInfo;->redirectingName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    :cond_0
    :goto_0
    return-void

    .line 3252
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v1, v1}, Lcom/android/phone/CallView;->setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3253
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3257
    iget-object v0, p1, Lcom/android/phone/SomcCallerInfo;->redirectingNumber:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Lcom/android/phone/SomcInCallScreen$18;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$18;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->queryRedirectingInfo(Ljava/lang/String;Landroid/content/ContentResolver;Lcom/android/phone/OnRedirectingQueryCompleteListener;)V

    goto :goto_0
.end method

.method private hideAllMenuItems(Landroid/view/Menu;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1350
    const v0, 0x7f0700f4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1351
    const v0, 0x7f0700f5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1352
    return-void
.end method

.method private hideAmAnimation()V
    .locals 1

    .prologue
    .line 4768
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideAmAnimation()V

    .line 4769
    return-void
.end method

.method private initCallWidgetManager()V
    .locals 3

    .prologue
    .line 4514
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonymobile.callwidgetframework.ACTION_REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4515
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/phone/SomcInCallScreen;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4516
    return-void
.end method

.method private internalAnswerCall()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 3919
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3921
    if-eqz v0, :cond_1

    .line 3922
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 3923
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 3924
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 3925
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 3926
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3928
    :cond_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 3961
    :goto_0
    if-ne v0, v4, :cond_1

    .line 3965
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showSipCallingProgress()V

    .line 3970
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3971
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    .line 3972
    return-void

    .line 3930
    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v4, :cond_3

    const/4 v2, 0x4

    if-ne v0, v2, :cond_7

    .line 3937
    :cond_3
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 3938
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 3940
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 3941
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    .line 3942
    const-string v2, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3947
    :cond_4
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3953
    :cond_5
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "internalAnswerCall: answering..."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3954
    :cond_6
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3958
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private internalResolveIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 1433
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return-void

    .line 1436
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1437
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1457
    :cond_2
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1468
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    const-string v0, "com.android.phone.ShowDialpad"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1474
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    .line 1475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1480
    :cond_3
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v0, v1, Lcom/android/phone/InCallUiState;->showDialpad:Z

    goto :goto_0

    .line 1488
    :cond_4
    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1493
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected CALL action received by InCallScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1496
    :cond_6
    const-string v1, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private isCallEndedInteractionDisplayable(Lcom/android/internal/telephony/Connection;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 4875
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4881
    :cond_0
    :goto_0
    return v0

    .line 4878
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/SomcPhoneUtils;->needShowCallEndedInteraction(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4879
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isHDSpeechCodec(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3025
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 3026
    :goto_0
    array-length v3, v2

    sub-int/2addr v3, v0

    if-ge v0, v3, :cond_0

    .line 3027
    const-string v3, "Codec"

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3029
    const-string v3, "AMR_WB"

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3030
    const/4 v1, 0x1

    .line 3035
    :cond_0
    return v1

    .line 3026
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isHDVoiceCall(Lcom/android/internal/telephony/Call;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2996
    .line 2998
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getIndex()I
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 3006
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals;->mImsService:Lorg/codeaurora/ims/IImsService;

    invoke-interface {v2, v1}, Lorg/codeaurora/ims/IImsService;->getCallDetailsExtrasinCall(I)[Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 3011
    if-nez v2, :cond_1

    .line 3012
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 3013
    const-string v1, "callDetailsExtras is null"

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3021
    :cond_0
    :goto_0
    return v0

    .line 2999
    :catch_0
    move-exception v1

    .line 3000
    const-string v2, "SomcInCallScreen"

    const-string v3, "Error get connection index"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3007
    :catch_1
    move-exception v1

    .line 3008
    const-string v2, "SomcInCallScreen"

    const-string v3, "Error getCallDetailsExtrasinCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3016
    :cond_1
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 3017
    invoke-direct {p0, v4}, Lcom/android/phone/SomcInCallScreen;->isHDSpeechCodec(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3018
    const/4 v0, 0x1

    goto :goto_0

    .line 3016
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V
    .locals 3

    .prologue
    .line 4278
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 4280
    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 4284
    :cond_0
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    .line 4285
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 4287
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    instance-of v0, v0, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_3

    .line 4288
    iget-object v0, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/android/phone/SomcCallerInfo;->cachedContactNumberIcon:Landroid/graphics/Bitmap;

    .line 4297
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 4298
    const-string v0, "Load Image done: updateScreen!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4300
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 4303
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 4304
    return-void

    .line 4290
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    .line 4292
    if-eqz v0, :cond_1

    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4293
    iget-object v1, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2564
    const-string v0, "SomcInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    return-void
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 11

    .prologue
    const/16 v10, 0x6c

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1573
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 1574
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v6

    .line 1575
    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    .line 1580
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 1581
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v1, v1, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v1, v2, :cond_0

    .line 1582
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 1585
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_3

    move v2, v3

    .line 1587
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v9, :cond_4

    move v5, v3

    .line 1588
    :goto_1
    if-eqz v5, :cond_1f

    .line 1591
    if-eqz v2, :cond_1f

    .line 1592
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v7, "call_auto_retry"

    invoke-static {v1, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1605
    :goto_2
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRawDisconnectCause()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_5

    .line 1608
    :cond_1
    const v0, 0x7f0b0012

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    .line 1857
    :cond_2
    :goto_3
    return-void

    :cond_3
    move v2, v4

    .line 1585
    goto :goto_0

    :cond_4
    move v5, v4

    .line 1587
    goto :goto_1

    .line 1610
    :cond_5
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_6

    .line 1611
    const v0, 0x7f0b0017

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1613
    :cond_6
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_7

    .line 1614
    const v0, 0x7f0b0016

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1616
    :cond_7
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_8

    .line 1617
    const v0, 0x7f0b0014

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1619
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_9

    .line 1620
    const v0, 0x7f0b0015

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1622
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMSI_UNKNOWN_IN_VLR:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_a

    .line 1623
    iget v7, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    if-gtz v7, :cond_b

    .line 1624
    const v0, 0x7f0b0019

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1627
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->IMEI_NOT_ACCEPTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v7, :cond_b

    .line 1628
    iget v7, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    if-gtz v7, :cond_b

    .line 1629
    const v0, 0x7f0b0018

    invoke-direct {p0, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_3

    .line 1634
    :cond_b
    if-eqz v5, :cond_c

    .line 1635
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v5}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 1636
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v7, :cond_13

    .line 1641
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1675
    :cond_c
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1676
    if-eqz v1, :cond_f

    .line 1685
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1686
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v3, :cond_e

    .line 1687
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 1688
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_d

    .line 1697
    const-string v1, "SomcInCallScreen"

    const-string v5, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1699
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1707
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v1, :cond_f

    .line 1708
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1709
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x75

    invoke-static {v5, v7, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1710
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x7d0

    invoke-virtual {v5, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1728
    :cond_f
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 1733
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_10

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v5, :cond_11

    :cond_10
    if-eqz v2, :cond_11

    move v4, v3

    .line 1737
    :cond_11
    const-string v3, "SomcInCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDisconnect: , cause="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", callDuration"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    if-eqz v4, :cond_17

    .line 1757
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_12

    .line 1758
    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1763
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->delayedCleanupAfterDisconnect()V

    goto/16 :goto_3

    .line 1642
    :cond_13
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_14

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_c

    :cond_14
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v6, v5, :cond_c

    .line 1648
    iget-boolean v5, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v5, :cond_15

    .line 1650
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1651
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1653
    :cond_15
    if-nez v1, :cond_16

    .line 1655
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showCallLostDialog()V

    .line 1656
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1660
    :cond_16
    iput-boolean v3, p0, Lcom/android/phone/SomcInCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 1765
    :cond_17
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_18

    .line 1766
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1773
    :cond_18
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 1779
    if-eqz v2, :cond_1a

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_19

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1a

    .line 1782
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v1, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1817
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_1c

    .line 1818
    if-nez v2, :cond_1c

    .line 1822
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1826
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1b

    .line 1827
    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1829
    :cond_1b
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto/16 :goto_3

    .line 1839
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isEndCallInteractionOpened()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1840
    const/16 v0, 0xbb8

    .line 1848
    :goto_5
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1849
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v10, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_3

    .line 1842
    :cond_1d
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v6, v0, :cond_1e

    .line 1843
    const/16 v0, 0x5dc

    goto :goto_5

    .line 1845
    :cond_1e
    const/16 v0, 0x7d0

    goto :goto_5

    :cond_1f
    move v1, v4

    goto/16 :goto_2
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 2610
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2611
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2614
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2625
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 2626
    return-void
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 2

    .prologue
    .line 2309
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2310
    const-string v0, "SomcInCallScreen"

    const-string v1, "onPhoneStateChanged()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 2317
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 2318
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2319
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->invalidateOptionsMenu()V

    .line 2323
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 2325
    :cond_1
    return-void
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshCallViewSoundStates(Z)V
    .locals 6
    .param p1, "isMuteButtonEnabled"    # Z

    .prologue
    .line 2190
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isMicMuted()Z

    move-result v2

    .line 2191
    .local v2, "micMuted":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v3

    .line 2196
    .local v3, "speakerOn":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->isBluetoothConnected()Z

    move-result v0

    .line 2198
    .local v0, "bluetoothHeadsetConnected":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v1

    .line 2199
    .local v1, "bluetoothSoundOn":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v5}, Lcom/android/phone/SomcSoundHandling;->isWiredHeadsetConnected()Z

    move-result v4

    .line 2201
    .local v4, "wiredHeadsetConnected":Z
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v2}, Lcom/android/phone/CallView;->setMicIsMuted(Z)V

    .line 2202
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v3}, Lcom/android/phone/CallView;->setSpeakerIsOn(Z)V

    .line 2203
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 2204
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v1}, Lcom/android/phone/CallView;->setBluetoothAudioIsOn(Z)V

    .line 2205
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v4}, Lcom/android/phone/CallView;->setWiredHeadsetIsConnected(Z)V

    .line 2206
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 2207
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, p1}, Lcom/android/phone/CallView;->setMicButtonEnabled(Z)V

    .line 2208
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1370
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1371
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1373
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1384
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1386
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1387
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6d

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1388
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 1391
    :cond_0
    return-void
.end method

.method private rejectCallAndSendMsg(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 3728
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3729
    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getNumberFromCall(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v0

    .line 3730
    if-nez v0, :cond_1

    .line 3739
    :cond_0
    :goto_0
    return-void

    .line 3731
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send message to number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3732
    :cond_2
    if-eqz p1, :cond_3

    .line 3733
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/phone/SomcRejectMsgManager;->addPendingRejectMsgInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3734
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3736
    :cond_3
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcRejectMsgManager;->showCustomMessageDialog(Ljava/lang/String;)V

    .line 3737
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "message content is to be written"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBackgroundCallInfoFor3rdIncoming(Lcom/android/internal/telephony/Call;)V
    .locals 4

    .prologue
    .line 4588
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 4589
    if-nez v0, :cond_0

    .line 4590
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    .line 4627
    :goto_0
    return-void

    .line 4596
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 4597
    if-nez v1, :cond_1

    .line 4598
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    goto :goto_0

    .line 4603
    :cond_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4604
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    goto :goto_0

    .line 4610
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 4611
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v0

    .line 4614
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4615
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v2, v0, :cond_5

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4617
    :goto_1
    if-eqz v0, :cond_3

    const-string v1, "sip:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4618
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4621
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4622
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 4626
    :cond_4
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setBackgroundCallInfoFor3rdIncoming(Ljava/lang/String;)V

    goto :goto_0

    .line 4615
    :cond_5
    const-string v0, ""

    goto :goto_1
.end method

.method private setForegroundCallInfoForWaitingCall(Lcom/android/internal/telephony/Call;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 4525
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 4527
    if-nez v2, :cond_0

    .line 4528
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    .line 4579
    :goto_0
    return-void

    .line 4533
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 4535
    if-nez v3, :cond_1

    .line 4536
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    goto :goto_0

    .line 4542
    :cond_1
    const/4 v0, 0x0

    .line 4544
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 4546
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 4547
    invoke-static {v4}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4548
    const/4 v1, 0x3

    .line 4557
    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v4

    .line 4558
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2, v3, v4}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 4560
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4561
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v4, v2, :cond_7

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 4563
    :goto_2
    if-eqz v2, :cond_3

    const-string v3, "sip:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4564
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 4566
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4567
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 4572
    :cond_4
    if-eqz v0, :cond_8

    .line 4573
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4549
    :cond_5
    invoke-static {v4}, Lcom/android/phone/SomcPhoneUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4550
    const/4 v1, 0x2

    goto :goto_1

    .line 4552
    :cond_6
    iget-object v0, v3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 4561
    :cond_7
    const-string v2, ""

    goto :goto_2

    .line 4575
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private showAmPlayingAnimation()V
    .locals 1

    .prologue
    .line 4739
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showAmPlayingAnimation()V

    .line 4740
    return-void
.end method

.method private showAmRecordingAnimation()V
    .locals 2

    .prologue
    .line 4753
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showAmRecordingAnimation()V

    .line 4754
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v1}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->toggleSpeakerIcon(Z)V

    .line 4755
    return-void
.end method

.method private showCallEndedInteractionLayout(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 4889
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 4890
    .local v0, "info":Lcom/android/internal/telephony/CallerInfo;
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Lcom/android/phone/CallView;->showCallEndedInteractionLayout(ZLjava/lang/Object;)V

    .line 4891
    return-void

    .line 4890
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 4210
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4213
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 4214
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 4215
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4231
    :cond_1
    :goto_0
    return-void

    .line 4221
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4222
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4226
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4230
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 2212
    if-eqz p4, :cond_4

    .line 2213
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show photo for foreground call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2218
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 2219
    const/4 v0, 0x1

    .line 2221
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p3}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2222
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 2223
    const-string v0, " == Showing emergency call picture."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2224
    :cond_1
    const/4 v0, 0x3

    .line 2249
    :cond_2
    :goto_1
    if-eqz p4, :cond_3

    .line 2250
    if-eqz v1, :cond_b

    if-eqz p1, :cond_b

    .line 2251
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 2256
    :cond_3
    :goto_2
    return-void

    .line 2215
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show photo for background call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2225
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {p3}, Lcom/android/phone/SomcPhoneUtils;->isVoiceMailNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2226
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    .line 2227
    const-string v0, " == Showing voicemail picture."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2228
    :cond_6
    const/4 v0, 0x2

    goto :goto_1

    .line 2229
    :cond_7
    if-eqz p1, :cond_9

    iget-boolean v2, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v2, :cond_9

    .line 2230
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_8

    .line 2231
    const-string v2, " == Cached photo is current."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2233
    :cond_8
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 2234
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 2235
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    .line 2236
    const-string v2, " === Showing cached photo."

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 2239
    :cond_9
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_a

    .line 2240
    const-string v2, "showPhoto else clause.... Async update of photo!"

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2242
    :cond_a
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 2243
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;)V

    .line 2244
    const/4 v0, 0x0

    goto :goto_1

    .line 2253
    :cond_b
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    goto :goto_2
.end method

.method private showExitingECMDialog()V
    .locals 4

    .prologue
    .line 2833
    const-string v0, "SomcInCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 2836
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2837
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2838
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 2845
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 2846
    new-instance v1, Lcom/android/phone/SomcInCallScreen$12;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/SomcInCallScreen$12;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 2850
    new-instance v2, Lcom/android/phone/SomcInCallScreen$13;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/SomcInCallScreen$13;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/InCallUiState;)V

    .line 2856
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b03d2

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0b01f9

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 2861
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2863
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2864
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 6

    .prologue
    .line 2744
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2745
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showGenericErrorDialog(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2752
    :cond_0
    if-eqz p2, :cond_1

    .line 2753
    new-instance v2, Lcom/android/phone/SomcInCallScreen$6;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$6;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2758
    new-instance v1, Lcom/android/phone/SomcInCallScreen$7;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$7;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2763
    new-instance v0, Lcom/android/phone/SomcInCallScreen$8;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$8;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2788
    :goto_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    const v5, 0x7f0d0005

    invoke-direct {v4, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b009f

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 2791
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2795
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2797
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2798
    return-void

    .line 2769
    :cond_1
    new-instance v2, Lcom/android/phone/SomcInCallScreen$9;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$9;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2774
    new-instance v1, Lcom/android/phone/SomcInCallScreen$10;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcInCallScreen$10;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 2779
    new-instance v0, Lcom/android/phone/SomcInCallScreen$11;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$11;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    goto :goto_0
.end method

.method private showInfoForBackgroundCall(Lcom/android/internal/telephony/Call;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 3274
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3275
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3276
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v7}, Lcom/android/phone/CallView;->setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V

    .line 3301
    :goto_0
    return-void

    .line 3278
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p0, v7}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 3281
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    .line 3282
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 3284
    if-eqz v2, :cond_1

    .line 3285
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    .line 3289
    :cond_1
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-static {v2, v3, v0}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v2

    .line 3291
    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v0, v3, :cond_2

    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3293
    :goto_1
    iget-object v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3294
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v5, v3, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v4, v2, v0, v5, v6}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v3, v3, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v2, v0, v3, v5}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3297
    iget-object v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v7, v2}, Lcom/android/phone/SomcInCallScreen;->showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V

    goto :goto_0

    .line 3291
    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private showInfoForMainCall(Lcom/android/internal/telephony/Call;)V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3039
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Show info for main call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3042
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v12, :cond_1c

    .line 3043
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->isHDVoiceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    move v2, v0

    .line 3045
    :goto_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3046
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v12}, Lcom/android/phone/CallView;->setForegroundCallPhoto(I)V

    .line 3047
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0053

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3243
    :goto_1
    return-void

    .line 3050
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    .line 3051
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 3053
    if-eqz v9, :cond_1a

    .line 3055
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v7

    .line 3060
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 3061
    instance-of v0, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_9

    .line 3062
    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v0, v1

    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {v6, v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    .line 3070
    :goto_2
    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 3071
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 3072
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v6

    .line 3073
    invoke-direct {p0, v9}, Lcom/android/phone/SomcInCallScreen;->getCallerInfoFromConnection(Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v8

    .line 3075
    if-eqz v8, :cond_4

    .line 3076
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_2

    .line 3077
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " info.phoneNumber = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3079
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "- displayMainCallStatus: updatedCnapName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " info.cnapName = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3082
    :cond_2
    if-eqz v5, :cond_3

    iget-object v10, v8, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v4

    .line 3085
    :cond_3
    if-eqz v6, :cond_4

    iget-object v5, v8, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move v0, v4

    :cond_4
    move v5, v0

    .line 3102
    :goto_3
    const/4 v0, 0x0

    .line 3104
    if-eqz v5, :cond_c

    .line 3105
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, p0, p1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 3107
    iget-object v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3108
    iget-boolean v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    move v8, v0

    .line 3140
    :goto_4
    if-eqz v1, :cond_19

    .line 3146
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v0

    .line 3147
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 3148
    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 3149
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3150
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 3151
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 3152
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 3156
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 3157
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 3161
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v7}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v6

    .line 3163
    sget v0, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v7, v0, :cond_12

    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 3165
    :goto_5
    iget-object v5, v1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    .line 3168
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v10, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v10, :cond_13

    .line 3169
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 3175
    :goto_6
    if-nez v5, :cond_6

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    .line 3177
    const-string v5, "SomcInCallScreen"

    const-string v7, "internet call, phonetype changed"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0b0396

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3179
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 3180
    const/16 v6, 0x40

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 3193
    :cond_6
    if-eqz v0, :cond_7

    const-string v7, "sip:"

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 3194
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3197
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 3198
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v5, v6}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    const-string v7, ""

    invoke-virtual {v0, v5, v6, v7, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 3206
    :goto_7
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_8

    move-object v0, v1

    .line 3207
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->handleRedirectingInfoQuery(Lcom/android/phone/SomcCallerInfo;)V

    .line 3210
    :cond_8
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v8, v0, v4}, Lcom/android/phone/SomcInCallScreen;->showContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;ZLjava/lang/String;Z)V

    .line 3213
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/SomcLandOwnerInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3216
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->handleLandOwnerInfo(Lcom/android/phone/SomcCallerInfo;)V

    goto/16 :goto_1

    .line 3065
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v9}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    goto/16 :goto_2

    .line 3089
    :cond_a
    if-ne v5, v4, :cond_1b

    .line 3090
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 3091
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_b

    .line 3092
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "- displayMainCallStatus: updatedNumber = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " oldNumber = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3095
    :cond_b
    if-eqz v5, :cond_1b

    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 3097
    invoke-virtual {v9}, Lcom/android/internal/telephony/Connection;->clearUserData()V

    .line 3098
    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->oldNumber:Ljava/lang/String;

    move v5, v4

    goto/16 :goto_3

    .line 3113
    :cond_c
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_d

    .line 3114
    const-string v5, "- displayMainCallStatus: using data we already have..."

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3115
    :cond_d
    instance-of v5, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_f

    .line 3117
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    .line 3118
    const-string v0, "   ==> Got CallerInfo."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3121
    :cond_e
    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    move v8, v4

    .line 3122
    goto/16 :goto_4

    .line 3123
    :cond_f
    instance-of v5, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v5, :cond_11

    .line 3126
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_10

    .line 3127
    const-string v0, "   ==> Got CallerInfoToken."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3129
    :cond_10
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    move v8, v3

    goto/16 :goto_4

    .line 3131
    :cond_11
    const-string v1, "SomcInCallScreen"

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!"

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v3

    move-object v1, v0

    goto/16 :goto_4

    .line 3163
    :cond_12
    const-string v0, ""

    goto/16 :goto_5

    .line 3172
    :cond_13
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    goto/16 :goto_6

    .line 3202
    :cond_14
    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    if-nez v5, :cond_15

    const-string v5, ""

    :cond_15
    invoke-virtual {v7, v6, v0, v5, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_7

    .line 3217
    :cond_16
    instance-of v0, v1, Lcom/android/phone/SomcCallerInfo;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3220
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3225
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_17

    :goto_8
    iput-boolean v4, p0, Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z

    .line 3226
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V

    goto/16 :goto_1

    :cond_17
    move v4, v3

    .line 3225
    goto :goto_8

    .line 3228
    :cond_18
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallCityId(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3232
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 3239
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    invoke-static {v1, v3}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_1b
    move v5, v0

    goto/16 :goto_3

    :cond_1c
    move v2, v3

    goto/16 :goto_0
.end method

.method private showProgressIndication(II)V
    .locals 2

    .prologue
    .line 3892
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showProgressIndication(message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3894
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 3895
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 3896
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0, p2}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 3897
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 3898
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 3899
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 3900
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3901
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 3902
    return-void
.end method

.method private showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2633
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showStatusIndication(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2636
    :cond_0
    sget-object v0, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$phone$Constants$CallStatusCode:[I

    invoke-virtual {p1}, Lcom/android/phone/Constants$CallStatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2718
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showStatusIndication: unexpected status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2640
    :pswitch_0
    const-string v0, "SomcInCallScreen"

    const-string v1, "showStatusIndication: nothing to display"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    :cond_1
    :goto_0
    return-void

    .line 2652
    :pswitch_1
    const v0, 0x7f0b005e

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2659
    :pswitch_2
    const v0, 0x7f0b005b

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2666
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isIccInvalidCard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2667
    const v0, 0x7f0b001d

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2670
    :cond_2
    const v0, 0x7f0b005c

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2679
    :pswitch_4
    const v0, 0x7f0b005d

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2691
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 2692
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b038d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2702
    :pswitch_6
    const v0, 0x7f0b005a

    invoke-direct {p0, v0, v2}, Lcom/android/phone/SomcInCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 2708
    :pswitch_7
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 2714
    :pswitch_8
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showExitingECMDialog()V

    goto :goto_0

    .line 2636
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private showSupplementaryServiceNotification(Lcom/android/internal/telephony/gsm/SuppServiceNotification;)V
    .locals 8
    .param p1, "notification"    # Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .prologue
    const/4 v7, 0x1

    .line 642
    iget v0, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->code:I

    .line 643
    .local v0, "notificationCode":I
    iget v2, p1, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->notificationType:I

    .line 644
    .local v2, "notificationType":I
    const-string v1, ""

    .line 648
    .local v1, "notificationText":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 651
    packed-switch v0, :pswitch_data_0

    .line 657
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 658
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled supplementary service notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 686
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 688
    .local v3, "r":Landroid/content/res/Resources;
    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 689
    .local v4, "toast":Landroid/widget/Toast;
    const/16 v5, 0x30

    const/4 v6, 0x0

    const v7, 0x7f090011

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/Toast;->setGravity(III)V

    .line 690
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 692
    .end local v3    # "r":Landroid/content/res/Resources;
    .end local v4    # "toast":Landroid/widget/Toast;
    :cond_1
    return-void

    .line 653
    :pswitch_0
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0095

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    goto :goto_0

    .line 663
    :cond_2
    if-ne v2, v7, :cond_0

    .line 666
    packed-switch v0, :pswitch_data_1

    .line 677
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 678
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled supplementary service notification: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SuppServiceNotification;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 669
    :pswitch_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0096

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 670
    goto :goto_0

    .line 673
    :pswitch_2
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0097

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 674
    goto :goto_0

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 666
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 4453
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogChoice: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4456
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4457
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4459
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mWaitPromptDialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4460
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    .line 4461
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4462
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4463
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4466
    :cond_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b0121

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0201

    new-instance v2, Lcom/android/phone/SomcInCallScreen$22;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$22;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0202

    new-instance v2, Lcom/android/phone/SomcInCallScreen$21;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/SomcInCallScreen$21;-><init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4483
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4486
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4487
    return-void
.end method

.method private startAmPlayingAnimation()V
    .locals 1

    .prologue
    .line 4746
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->startAmPlayingAnimation()V

    .line 4747
    return-void
.end method

.method private startAmRecordingAnimation()V
    .locals 1

    .prologue
    .line 4761
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->startAmRecordingAnimation()V

    .line 4762
    return-void
.end method

.method private startDtmfTone(C)V
    .locals 2

    .prologue
    .line 3742
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "start playing dtmf tones..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3743
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3744
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startDtmfTone, NOT okToDialDTMFTones"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3761
    :cond_1
    :goto_0
    return-void

    .line 3748
    :cond_2
    invoke-static {p1}, Lcom/android/phone/SomcTonePlayer;->isValidTone(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3749
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing dtmf tone, NOT validTone, tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3753
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playing dtmf tone:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3755
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 3758
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 3759
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/SomcTonePlayer;->playToneByChar(CI)V

    goto :goto_0
.end method

.method private stopDtmfTone()V
    .locals 1

    .prologue
    .line 3764
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stop playing dtmf tones..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3765
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 3767
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 3768
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->stopTone()V

    .line 3770
    :cond_1
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;
    .locals 3

    .prologue
    .line 2338
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2339
    const-string v0, "syncWithPhoneState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2347
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 2352
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v1}, Lcom/android/phone/InCallUiState;->isProgressIndicationActive()Z

    move-result v1

    .line 2354
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_4

    .line 2357
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 2358
    const-string v0, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2359
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 2360
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    .line 2365
    :goto_0
    return-object v0

    .line 2363
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    .line 2364
    const-string v0, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2365
    :cond_5
    sget-object v0, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1397
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1398
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1399
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1400
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1401
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1402
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x68

    invoke-interface {v0, v2, v1, v2}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1403
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 1404
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mRegisteredForPhoneStates:Z

    .line 1405
    return-void
.end method

.method private updateConferenceListInfo(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3982
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 3983
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    .line 3985
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    if-ge v3, v5, :cond_7

    const/4 v0, 0x5

    if-ge v3, v0, :cond_7

    .line 3987
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3988
    invoke-static {}, Lcom/android/phone/CallView$ConferenceCallItem;->createConferenceCallItem()Lcom/android/phone/CallView$ConferenceCallItem;

    move-result-object v6

    .line 3991
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v1

    .line 3993
    iget-object v2, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 3995
    if-eqz v2, :cond_3

    .line 3996
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v2, v1, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    .line 3999
    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4000
    const-string v1, ""

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 4013
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/CityIdInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    .line 4014
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    .line 4015
    iget-object v1, v1, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    .line 4019
    :cond_1
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/SomcLandOwnerInfo;->isServiceSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v2

    .line 4020
    check-cast v1, Lcom/android/phone/SomcCallerInfo;

    .line 4021
    iget-object v1, v1, Lcom/android/phone/SomcCallerInfo;->landOwnerInfo:Ljava/lang/String;

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->additionalCallInfo:Ljava/lang/String;

    .line 4027
    :cond_2
    iput-object v0, v6, Lcom/android/phone/CallView$ConferenceCallItem;->conferenceCallId:Ljava/lang/Object;

    .line 4030
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContactNumIconDataMap()Ljava/util/Map;

    move-result-object v0

    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, v6, Lcom/android/phone/CallView$ConferenceCallItem;->contactNumberIcon:Landroid/graphics/Bitmap;

    .line 4034
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3985
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 4002
    :cond_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    sget v7, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-ne v1, v7, :cond_6

    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_2
    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 4004
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    const-string v7, "sip:"

    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4005
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    .line 4007
    :cond_5
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4008
    iget-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v6, Lcom/android/phone/CallView$ConferenceCallItem;->number:Ljava/lang/String;

    goto :goto_1

    .line 4002
    :cond_6
    const-string v1, ""

    goto :goto_2

    .line 4037
    :cond_7
    return-object v4
.end method

.method private updateExpandedViewState()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 4498
    iget-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-eqz v2, :cond_2

    .line 4499
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4501
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v2, v2, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    .line 4511
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 4501
    goto :goto_0

    .line 4506
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_1

    .line 4509
    :cond_2
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, v1, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableExpandedView(Z)V

    goto :goto_1
.end method

.method private updateOptionMenu()V
    .locals 3

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1339
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlayingOrRecording()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1346
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->showOptionMenuButton(Z)V

    .line 1347
    return-void

    .line 1339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateProgressIndication()V
    .locals 4

    .prologue
    const v3, 0x7f0b0397

    .line 3854
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissProgressIndication()V

    .line 3858
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3886
    :goto_0
    return-void

    .line 3862
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getProgressIndication()Lcom/android/phone/InCallUiState$ProgressIndicationType;

    move-result-object v0

    .line 3864
    sget-object v1, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$phone$InCallUiState$ProgressIndicationType:[I

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState$ProgressIndicationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3882
    const-string v1, "SomcInCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProgressIndication: unexpected value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3866
    :pswitch_0
    const-string v0, "SomcInCallScreen"

    const-string v1, "No progress indication necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3870
    :pswitch_1
    const v0, 0x7f0b0398

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SomcInCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 3876
    :pswitch_2
    const v0, 0x7f0b0399

    invoke-direct {p0, v3, v0}, Lcom/android/phone/SomcInCallScreen;->showProgressIndication(II)V

    goto :goto_0

    .line 3864
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .locals 8

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4252
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateProviderOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4254
    :cond_0
    const v0, 0x7f0700b4

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4256
    iget-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    if-eqz v1, :cond_1

    .line 4257
    const v1, 0x7f0b03dd

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4258
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4261
    const v1, 0x7f0700b5

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4262
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4263
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4265
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4269
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4270
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4271
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4275
    :goto_0
    return-void

    .line 4273
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public asyncUpdateContactExtraInfo(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2
    .param p1, "callerInfo"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 4046
    instance-of v1, p1, Lcom/android/phone/SomcCallerInfo;

    if-nez v1, :cond_0

    .line 4049
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 4047
    check-cast v0, Lcom/android/phone/SomcCallerInfo;

    .line 4048
    .local v0, "somcCallerInfo":Lcom/android/phone/SomcCallerInfo;
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactImage(Lcom/android/phone/SomcCallerInfo;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4773
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlayingOrRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4774
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4783
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 4776
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 4778
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->setDeviceRxMuteOff()V

    goto :goto_0

    .line 4774
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 4776
    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4408
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4409
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 4410
    const/4 v0, 0x1

    return v0
.end method

.method public endSomcInCallScreenSession()V
    .locals 2

    .prologue
    .line 4166
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endSomcInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4168
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 4169
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    .line 4173
    :goto_0
    return-void

    .line 4171
    :cond_1
    const-string v0, "SomcInCallScreen"

    const-string v1, "endSomcInCallScreenSession(): Call in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1268
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1269
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->moveTaskToBack(Z)Z

    .line 1270
    return-void
.end method

.method hangupRingingCall()V
    .locals 1

    .prologue
    .line 4726
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4727
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 4728
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideRejectMsgList()V

    .line 4729
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 4732
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 4733
    return-void
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 2475
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isEndOrRejectBtPressed()Z
    .locals 1

    .prologue
    .line 881
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    return v0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2468
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isForegroundActivityForProximity()Z
    .locals 1

    .prologue
    .line 4058
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    return v0
.end method

.method public isKeyBoardHidden()Z
    .locals 2

    .prologue
    .line 856
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 858
    const/4 v0, 0x1

    .line 860
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public okToDialDTMFTones()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1544
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 1545
    .local v2, "hasRingingCall":Z
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1548
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_0

    .line 1564
    :goto_0
    return v0

    .line 1559
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    :cond_1
    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v0, 0x1

    .line 1564
    .local v0, "canDial":Z
    :cond_2
    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 4152
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method public onActionPerformed(ILjava/lang/Object;)V
    .locals 6

    .prologue
    const/high16 v5, 0x10000000

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3396
    packed-switch p1, :pswitch_data_0

    .line 3725
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3401
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_3

    .line 3405
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const v1, 0x7f0b000b

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->showEndingLastCallLayout(I)V

    .line 3407
    :cond_3
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3408
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 3413
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3414
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 3415
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 3417
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3419
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto :goto_0

    .line 3425
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3430
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3435
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 3441
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 3442
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object v0

    .line 3443
    if-eqz v0, :cond_0

    .line 3445
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->cdmaSwapSecondCallState()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3446
    :catch_0
    move-exception v0

    .line 3447
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3455
    :pswitch_6
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3456
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto/16 :goto_0

    .line 3461
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_0

    .line 3466
    :pswitch_8
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_7

    move-object v0, p2

    .line 3468
    check-cast v0, Ljava/lang/String;

    const-string v2, "voicemail:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 3470
    const-string v0, "voicemail:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3476
    :goto_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "making a privileged call to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3477
    :cond_5
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 3478
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->clearDtmfDialPadDigits()V

    .line 3479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3480
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3473
    :cond_6
    const-string v0, "tel"

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1

    .line 3483
    :cond_7
    const-string v0, "SomcInCallScreen"

    const-string v1, "CallView wants us to make a privileged call but didn\'t supply a string!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3488
    :pswitch_9
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 3489
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    .line 3490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "asking contacts to show contact: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3492
    :cond_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 3493
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3494
    const-string v1, "phone"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3495
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3496
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3498
    :cond_9
    const-string v0, "SomcInCallScreen"

    const-string v1, "CallView wants us to show a contact but didn\'t supply a string!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3503
    :pswitch_a
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 3504
    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startDtmfTone(C)V

    goto/16 :goto_0

    .line 3509
    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 3510
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateOptionMenu()V

    goto/16 :goto_0

    .line 3515
    :pswitch_c
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3516
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3520
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3518
    :cond_a
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_2

    .line 3524
    :pswitch_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->toggleSoundPhoneSpeaker()V

    .line 3525
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3529
    :pswitch_e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_b

    .line 3530
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3532
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3536
    :pswitch_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3537
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3541
    :pswitch_10
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto/16 :goto_0

    .line 3546
    :pswitch_11
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3547
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 3548
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3549
    const-string v0, "Answer during 3rd incoming call: ACTION_END_HELD_CALL_AT_3RD_INCOMING_CALL"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3556
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "content://contacts/people/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3557
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3565
    :pswitch_13
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_d

    .line 3566
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_c

    .line 3567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> ENDING conference connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3570
    :cond_c
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 3571
    check-cast p2, Lcom/android/internal/telephony/Connection;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 3574
    :cond_d
    const-string v0, "SomcInCallScreen"

    const-string v1, "The view asked us to hangup a conference call but didn\'t supply correct data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3583
    :pswitch_14
    instance-of v0, p2, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_f

    .line 3584
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_e

    .line 3585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "===> SEPARATING conference connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3587
    :cond_e
    check-cast p2, Lcom/android/internal/telephony/Connection;

    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->separateCall(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    .line 3590
    :cond_f
    const-string v0, "SomcInCallScreen"

    const-string v1, "The view asked us to extract a conference call but didn\'t supply correct data!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3594
    :pswitch_15
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->silenceRinger()V

    goto/16 :goto_0

    .line 3597
    :pswitch_16
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 3598
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3599
    :cond_10
    if-nez p2, :cond_11

    .line 3600
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->rejectCallAndSendMsg(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3602
    :cond_11
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->hideRejectMsgList()V

    .line 3603
    const-string v0, "SomcInCallScreen"

    const-string v1, "wrong data type for reject message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3608
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->invalidateOptionsMenu()V

    .line 3609
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateOptionMenu()V

    goto/16 :goto_0

    .line 3612
    :pswitch_18
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 3614
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_0

    .line 3618
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_12

    .line 3619
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3620
    const-string v0, "- onActionPerformed: not the foreground Activity!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3624
    :cond_12
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 3625
    if-nez v0, :cond_13

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcRejectMsgManager;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3629
    :cond_13
    invoke-direct {p0, v2, v3, v3, v3}, Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V

    goto/16 :goto_0

    .line 3634
    :cond_14
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v3}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto/16 :goto_0

    .line 3637
    :cond_15
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3638
    const-string v0, "update the navigation bar with the wrong parameter!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3643
    :pswitch_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3644
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 3648
    :cond_16
    :goto_3
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto/16 :goto_0

    .line 3645
    :cond_17
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_16

    .line 3646
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v4}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_3

    .line 3651
    :pswitch_1a
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->startAmPlayingAnimation()V

    .line 3652
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmPlayingAnimation()V

    goto/16 :goto_0

    .line 3655
    :pswitch_1b
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->startAmRecordingAnimation()V

    .line 3656
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmRecordingAnimation()V

    goto/16 :goto_0

    .line 3659
    :pswitch_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_0

    .line 3660
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0, v3}, Lcom/android/phone/widget/SomcCallWidgetManager;->setAreaReserved(Z)V

    goto/16 :goto_0

    .line 3664
    :pswitch_1d
    check-cast p2, Lcom/android/phone/widget/ISomcCallWidget;

    .line 3666
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->hasPhoneStateAccess()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 3667
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->getConnectionFromCall(Lcom/android/internal/telephony/Call;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3668
    if-eqz v0, :cond_18

    .line 3669
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 3672
    :goto_4
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v1

    invoke-interface {v1, p0, p2, v0}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->select(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3675
    :pswitch_1e
    check-cast p2, Lcom/android/phone/widget/ISomcCallWidget;

    .line 3676
    invoke-interface {p2}, Lcom/android/phone/widget/ISomcCallWidget;->getActionHandler()Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/android/phone/widget/ISomcCallWidget$WidgetActionHandler;->destroy(Landroid/content/Context;Lcom/android/phone/widget/ISomcCallWidget;)V

    goto/16 :goto_0

    .line 3680
    :pswitch_1f
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3681
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3682
    const-string v0, "tel"

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3683
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3684
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3685
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3686
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    .line 3691
    :pswitch_20
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3692
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3693
    const-string v0, "sms"

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 3694
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3695
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3696
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3697
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    .line 3702
    :pswitch_21
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3703
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3705
    const-string v1, "phone"

    iget-object v2, p2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3707
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3708
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3709
    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3710
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    .line 3715
    :pswitch_22
    instance-of v0, p2, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 3716
    check-cast p2, Lcom/android/internal/telephony/CallerInfo;

    .line 3717
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v1, p2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 3719
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3720
    invoke-virtual {p0, v1}, Lcom/android/phone/SomcInCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3721
    invoke-direct {p0, v3}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession(Z)V

    goto/16 :goto_0

    :cond_18
    move-object v0, v1

    goto/16 :goto_4

    .line 3396
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_c
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_a
        :pswitch_b
        :pswitch_9
        :pswitch_8
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_1c
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 818
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_0
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v3, v4, :cond_5

    const/4 v1, 0x1

    .line 820
    .local v1, "dialPadOpen":Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->inManageConference()Z

    move-result v2

    .line 821
    .local v2, "inConference":Z
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "dialPadNumber":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->reDraw()V

    .line 826
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_1

    .line 827
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    .line 828
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 832
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    .line 834
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, v2}, Lcom/android/phone/CallView;->setInManageConference(Z)V

    .line 836
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 837
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    sget-object v4, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {v3, v4}, Lcom/android/phone/CallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 839
    :cond_2
    if-eqz v0, :cond_3

    .line 840
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, v0}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 842
    :cond_3
    if-eqz v1, :cond_4

    .line 843
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 848
    :cond_4
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3, p0}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 849
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v4}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/CallView;->setCallRecordingOn(Z)V

    .line 850
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 851
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v3}, Lcom/android/phone/CallView;->requestFocus()Z

    .line 852
    return-void

    .line 818
    .end local v0    # "dialPadNumber":Ljava/lang/String;
    .end local v1    # "dialPadOpen":Z
    .end local v2    # "inConference":Z
    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 714
    const-string v5, "SomcInCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate()...  this = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 716
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 717
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 720
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v5, :cond_0

    .line 726
    const-string v5, "SomcInCallScreen"

    const-string v6, "onCreate() reached on non-voice-capable device"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->finish()V

    .line 810
    :goto_0
    return-void

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->initCallWidgetManager()V

    .line 732
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 733
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcInCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 735
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5, p0}, Lcom/android/phone/PhoneGlobals;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 736
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/phone/SomcRejectMsgManager;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 739
    const/high16 v2, 0x80000

    .line 740
    .local v2, "flags":I
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_1

    .line 746
    const/high16 v5, 0x400000

    or-int/2addr v2, v5

    .line 749
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    .line 750
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 751
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v5

    if-nez v5, :cond_2

    .line 755
    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 757
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 760
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x8000

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 762
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 764
    iput-object p0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    .line 766
    new-instance v5, Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/phone/SomcSoundHandling;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    .line 768
    new-instance v5, Lcom/android/phone/LargeCallView;

    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/phone/LargeCallView;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    .line 769
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcInCallScreen;->setContentView(Landroid/view/View;)V

    .line 771
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, p0}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 774
    new-instance v5, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v5}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 776
    new-instance v5, Lcom/android/phone/CallTime;

    invoke-direct {v5, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 777
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 779
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->registerForPhoneStates()V

    .line 786
    if-nez p1, :cond_4

    .line 787
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_3

    .line 788
    const-string v5, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 790
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 806
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 808
    new-instance v5, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    invoke-direct {v5, p0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    .line 809
    const-string v5, "power"

    invoke-virtual {p0, v5}, Lcom/android/phone/SomcInCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mPowerManager:Landroid/os/PowerManager;

    goto/16 :goto_0

    .line 793
    :cond_4
    const-string v5, "DialPadNumber"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "dialPadNumber":Ljava/lang/String;
    const-string v5, "DialPadOpen"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 795
    .local v1, "dialPadOpen":Z
    const-string v5, "InConference"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 797
    .local v3, "inConference":Z
    if-eqz v0, :cond_5

    .line 798
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v0}, Lcom/android/phone/CallView;->setDtmfDialPadDigits(Ljava/lang/String;)V

    .line 800
    :cond_5
    if-eqz v1, :cond_6

    .line 801
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 803
    :cond_6
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v5, v3}, Lcom/android/phone/CallView;->setInManageConference(Z)V

    goto :goto_1
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 1
    .param p1, "id"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4847
    new-instance v0, Lcom/android/phone/RejectMsgLoader;

    invoke-direct {v0, p0}, Lcom/android/phone/RejectMsgLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1206
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy()...  this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsDestroyed:Z

    .line 1212
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallRecorderHandler:Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen$CallRecorderHandler;->unregister()V

    .line 1213
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 1214
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcRejectMsgManager;->setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V

    .line 1216
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->unregisterForPhoneStates()V

    .line 1218
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->closeHandsFree()V

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    .line 1223
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 1225
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcInCallScreen;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1232
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1233
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 3305
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 3306
    const-string v0, "onImageLoadComplete."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 3308
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 3314
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mLoadingPersonUri:Landroid/net/Uri;

    .line 3321
    :goto_0
    check-cast p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;

    .line 3322
    iget-object v0, p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 3323
    iget-object v1, p4, Lcom/android/phone/SomcInCallScreen$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 3325
    iput-object p2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 3326
    iput-object p3, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 3327
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 3329
    const/16 v1, 0x70

    if-ne p1, v1, :cond_1

    .line 3330
    new-instance v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;

    invoke-direct {v1}, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;-><init>()V

    .line 3331
    iput-object p2, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->result:Ljava/lang/Object;

    .line 3332
    iput-object v0, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->info:Lcom/android/internal/telephony/CallerInfo;

    .line 3333
    iput-object p5, v1, Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;->resultIcon:Landroid/graphics/Bitmap;

    .line 3334
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->loadImage(Lcom/android/phone/SomcInCallScreen$LoadContactExtraArgs;)V

    .line 3336
    :cond_1
    return-void

    .line 3318
    :cond_2
    const-string v0, "SomcInCallScreen"

    const-string v1, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2500
    sparse-switch p1, :sswitch_data_0

    .line 2550
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 2503
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->handleBackKey()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2509
    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2517
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_0

    .line 2529
    const-string v0, "SomcInCallScreen"

    const-string v2, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->silenceRinger()V

    goto :goto_0

    .line 2543
    :sswitch_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2545
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 2543
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 2500
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x5b -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/Loader;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 131
    check-cast p2, Ljava/util/List;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/SomcInCallScreen;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4853
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/phone/ItemWithIcon;>;>;"
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/phone/ItemWithIcon;>;"
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Loader;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 4856
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 4863
    :cond_0
    :goto_0
    return-void

    .line 4859
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4862
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, p2}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ItemWithIcon;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 4868
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lcom/android/phone/ItemWithIcon;>;>;"
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1409
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1429
    invoke-direct {p0, p1}, Lcom/android/phone/SomcInCallScreen;->internalResolveIntent(Landroid/content/Intent;)V

    .line 1430
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1089
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1091
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "SomcInCallScreen"

    const-string v1, "onPause()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->onPause()V

    .line 1097
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->stopDtmfTone()V

    .line 1099
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 1104
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 1109
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mProviderOverlayVisible:Z

    .line 1110
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    .line 1114
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->setBeginningCall(Z)V

    .line 1142
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_2

    .line 1147
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    .line 1152
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1154
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 1157
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 1162
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 1163
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1164
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1169
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1172
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_4

    .line 1173
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 1174
    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 1181
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 1184
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1187
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_6

    .line 1188
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    .line 1189
    const-string v0, "Release UpdateLock on onPause() because there\'s no active phone call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1191
    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getUpdateLock()Landroid/os/UpdateLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1193
    :cond_6
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 2

    .prologue
    .line 2372
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2373
    const-string v0, "onQueryComplete."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2375
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 2381
    :goto_0
    return-void

    .line 2380
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 893
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 895
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 896
    const-string v0, "SomcInCallScreen"

    const-string v3, "onResume()..."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    .line 900
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivityForProximity:Z

    .line 902
    iput-boolean v2, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 905
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 907
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_1

    .line 908
    new-instance v3, Lcom/android/phone/SomcInCallScreen$3;

    invoke-direct {v3, p0}, Lcom/android/phone/SomcInCallScreen$3;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 925
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/phone/SomcInCallScreen;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 928
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateExpandedViewState()V

    .line 932
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 934
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v0, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    if-eqz v0, :cond_9

    .line 935
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->openDtmfDialPad()V

    .line 958
    :goto_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->hasPendingCallStatusCode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 959
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- onResume: need to show status indication!"

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-virtual {v0}, Lcom/android/phone/InCallUiState;->getPendingCallStatusCode()Lcom/android/phone/Constants$CallStatusCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showStatusIndication(Lcom/android/phone/Constants$CallStatusCode;)V

    move v0, v1

    .line 969
    :goto_1
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v3}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAudioConnected()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 970
    const/4 v3, 0x6

    invoke-virtual {p0, v3}, Lcom/android/phone/SomcInCallScreen;->setVolumeControlStream(I)V

    .line 976
    :goto_2
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    sget-object v4, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    iput-object v4, v3, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 982
    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 984
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->syncWithPhoneState()Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    move-result-object v3

    .line 985
    sget-object v4, Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;->SUCCESS:Lcom/android/phone/SomcInCallScreen$SyncWithPhoneStateStatus;

    if-eq v3, v4, :cond_3

    .line 986
    if-eqz v0, :cond_b

    .line 994
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 995
    const-string v0, "SomcInCallScreen"

    const-string v3, "- syncWithPhoneState failed, but staying here anyway."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->updateWakeState()V

    .line 1025
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1026
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1027
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneGlobals;->setRestoreMuteOnInCallResume(Z)V

    .line 1031
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    :goto_3
    iput-boolean v1, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    .line 1035
    iget-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-nez v0, :cond_5

    .line 1036
    new-instance v0, Lcom/android/phone/SomcTonePlayer;

    const/16 v1, 0x5a

    invoke-direct {v0, v2, v1}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 1039
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1059
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1060
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isMmiDialogEnable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1061
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-nez v0, :cond_6

    .line 1062
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1063
    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->displayMmiInfo(Lcom/android/internal/telephony/MmiCode;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 1070
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1071
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmPlayingAnimation()V

    .line 1078
    :goto_4
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_7

    .line 1079
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->triggerReload()V

    .line 1082
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_8

    .line 1083
    const-string v0, "SomcInCallScreen"

    const-string v1, "onResume() done."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    :cond_8
    :goto_5
    return-void

    .line 937
    :cond_9
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->closeDtmfDialPad()V

    goto/16 :goto_0

    .line 972
    :cond_a
    invoke-virtual {p0, v2}, Lcom/android/phone/SomcInCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    .line 1010
    :cond_b
    const-string v0, "SomcInCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- syncWithPhoneState failed! status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->dismissAllDialogs()V

    .line 1014
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->endSomcInCallScreenSession()V

    goto :goto_5

    :cond_c
    move v1, v2

    .line 1031
    goto/16 :goto_3

    .line 1072
    :cond_d
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1073
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmRecordingAnimation()V

    goto :goto_4

    .line 1075
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->hideAmAnimation()V

    goto :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1198
    const-string v0, "DialPadNumber"

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->getDtmfDialPadDigits()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    const-string v1, "DialPadOpen"

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->isKeyBoardHidden()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1200
    const-string v0, "InConference"

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v1}, Lcom/android/phone/CallView;->inManageConference()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1201
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->cleanUpWidgetMenu()V

    .line 1202
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1203
    return-void

    .line 1199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1237
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 1238
    const-string v1, "onStop()..."

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1239
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1241
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 1243
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 1244
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    .line 1245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1246
    :cond_1
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 3

    .prologue
    .line 2388
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

    .line 2391
    sget-object v0, Lcom/android/phone/SomcInCallScreen$26;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppService:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2434
    const v0, 0x7f0b0065

    .line 2442
    :goto_0
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 2443
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2446
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2449
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0d0005

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b009f

    new-instance v2, Lcom/android/phone/SomcInCallScreen$5;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcInCallScreen$5;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2460
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2461
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2462
    return-void

    .line 2396
    :pswitch_0
    const v0, 0x7f0b0063

    .line 2397
    goto :goto_0

    .line 2402
    :pswitch_1
    const v0, 0x7f0b0062

    .line 2403
    goto :goto_0

    .line 2409
    :pswitch_2
    const v0, 0x7f0b0064

    .line 2410
    goto :goto_0

    .line 2415
    :pswitch_3
    const v0, 0x7f0b005f

    .line 2416
    goto :goto_0

    .line 2421
    :pswitch_4
    const v0, 0x7f0b0061

    .line 2422
    goto :goto_0

    .line 2427
    :pswitch_5
    const v0, 0x7f0b0060

    .line 2428
    goto :goto_0

    .line 2391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4
    .param p1, "timeElapsed"    # J

    .prologue
    .line 2489
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->getAmGreetingDuration()J

    move-result-wide v0

    .line 2491
    .local v0, "greetingDuration":J
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 2493
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/CallView;->setCallTime(Ljava/lang/String;)V

    .line 2495
    :cond_1
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x6f

    .line 4081
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4082
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4083
    return-void
.end method

.method requestUpdateNavigationBar()V
    .locals 2

    .prologue
    const/16 v1, 0x76

    .line 4091
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateNavigationBar()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4092
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4093
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4094
    return-void
.end method

.method requestUpdateScreen()V
    .locals 1

    .prologue
    .line 4108
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 4111
    :cond_0
    return-void
.end method

.method public setEmergencyCallRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I

    .prologue
    .line 4200
    iput p1, p0, Lcom/android/phone/SomcInCallScreen;->mEmergencyCallRetryCount:I

    .line 4201
    return-void
.end method

.method setEndOrRejectBtPressed()V
    .locals 1

    .prologue
    .line 888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/SomcInCallScreen;->mIsEndOrRejectBtPressed:Z

    .line 889
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 1358
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1361
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1362
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1363
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1364
    return-void
.end method

.method public showOptionsMenu(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 1278
    new-instance v0, Lcom/android/phone/SomcInCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcInCallScreen$4;-><init>(Lcom/android/phone/SomcInCallScreen;)V

    .line 1297
    new-instance v1, Landroid/widget/PopupMenu;

    invoke-direct {v1, p0, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1298
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1299
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1300
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1301
    const/high16 v2, 0x7f0f0000

    invoke-virtual {v0, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1302
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->hideAllMenuItems(Landroid/view/Menu;)V

    .line 1304
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080031

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1306
    invoke-direct {p0, v1}, Lcom/android/phone/SomcInCallScreen;->enableCallRecorderMenuItems(Landroid/view/Menu;)V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 1310
    return-void
.end method

.method public toggleSpeakerPhone(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    .line 4787
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4803
    :goto_0
    return-void

    .line 4790
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4791
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->toggleSpeakerIcon(Z)V

    .line 4792
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0}, Lcom/android/phone/SomcSoundHandling;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4793
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 4797
    :goto_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->setDeviceRxMuteOn()V

    goto :goto_0

    .line 4795
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    goto :goto_1

    .line 4799
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2}, Lcom/android/phone/CallView;->toggleSpeakerIcon(Z)V

    .line 4800
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mSomcSoundHandling:Lcom/android/phone/SomcSoundHandling;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSoundHandling;->setSound(I)V

    .line 4801
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->setDeviceRxMuteOff()V

    goto :goto_0
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 2986
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcInCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->unregisterForPhoneStates()V

    .line 2992
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->registerForPhoneStates()V

    .line 2993
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .param p1, "dismissKeyguard"    # Z

    .prologue
    const/high16 v1, 0x400000

    .line 4064
    if-eqz p1, :cond_0

    .line 4065
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4069
    :goto_0
    return-void

    .line 4067
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method updateMicIsMuted()V
    .locals 2

    .prologue
    .line 4490
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setMicIsMuted(Z)V

    .line 4491
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->refreshSoundStates()V

    .line 4492
    return-void
.end method

.method updateScreen()V
    .locals 9

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v3, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x1

    .line 1908
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    .line 1910
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_0

    .line 1911
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 1912
    const-string v7, "  updateScreen..."

    invoke-direct {p0, v7}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1913
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - phone state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1914
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  - inCallScreenMode = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1922
    :cond_0
    iget-boolean v5, p0, Lcom/android/phone/SomcInCallScreen;->mIsForegroundActivity:Z

    if-nez v5, :cond_2

    .line 1923
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 1924
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2186
    :cond_1
    :goto_0
    return-void

    .line 1926
    :cond_2
    sget-object v5, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v5, :cond_3

    .line 1927
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    .line 1928
    const-string v0, "- updateScreen: call ended state (NOT updating ui)..."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1934
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProgressIndication()V

    .line 1948
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_2f

    .line 1949
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    .line 1959
    :goto_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 1960
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 1961
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 1963
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, v5, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, v5, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v7, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_5
    move v5, v4

    .line 1966
    :goto_2
    if-nez v5, :cond_d

    move v5, v4

    :goto_3
    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->refreshCallViewSoundStates(Z)V

    .line 1968
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1969
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v7, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/SomcInCallScreen;->updateConferenceListInfo(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 1974
    :goto_4
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    .line 1975
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v7, :cond_14

    .line 1978
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "- updateScreen: Ringing call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 1980
    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1985
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1990
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1991
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/CallView;->setForegroundCallInfoForWaitingCall(Ljava/lang/String;I)V

    .line 1998
    :goto_5
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_7

    .line 1999
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->setBackgroundCallInfoFor3rdIncoming(Lcom/android/internal/telephony/Call;)V

    .line 2006
    :cond_7
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->allowEndingHeldCallAt3rdIncomingCall()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/phone/CallView;->showWaitingCallLayout(ZZ)V

    .line 2022
    :goto_7
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->isRejectMsgListOpened()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/SomcRejectMsgManager;->isShowingPopup()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2027
    :cond_8
    invoke-direct {p0, v4, v6, v6, v6}, Lcom/android/phone/SomcInCallScreen;->enableNavigationBar(ZZZZ)V

    .line 2034
    :goto_8
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    .line 2036
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->checkIfRejectMsgNeeded(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2037
    invoke-virtual {p0}, Lcom/android/phone/SomcInCallScreen;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 2182
    :cond_9
    :goto_9
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateOptionMenu()V

    .line 2183
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_1

    .line 2184
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0, v6}, Lcom/android/phone/widget/SomcCallWidgetManager;->setAreaReserved(Z)V

    goto/16 :goto_0

    .line 1951
    :cond_a
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v2

    .line 1952
    goto/16 :goto_1

    .line 1953
    :cond_b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/Call;->hasConnection(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v3

    .line 1954
    goto/16 :goto_1

    :cond_c
    move v5, v6

    .line 1963
    goto/16 :goto_2

    :cond_d
    move v5, v6

    .line 1966
    goto/16 :goto_3

    .line 1971
    :cond_e
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    goto/16 :goto_4

    .line 1995
    :cond_f
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->setForegroundCallInfoForWaitingCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_5

    :cond_10
    move v0, v6

    .line 2006
    goto :goto_6

    .line 2012
    :cond_11
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showIncomingCallLayout()V

    goto :goto_7

    .line 2032
    :cond_12
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v6}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_8

    .line 2039
    :cond_13
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/List;)V

    goto :goto_9

    .line 2041
    :cond_14
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v7, :cond_27

    .line 2043
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v0, v0, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 2047
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2049
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_15

    .line 2050
    const-string v0, "- updateScreen: Making an outgoing call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2051
    :cond_15
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    invoke-virtual {v0, v6, v1, v4}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 2052
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_9

    .line 2053
    :cond_16
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2055
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_17

    .line 2056
    const-string v0, "- updateScreen: Two ongoing calls."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2060
    :cond_17
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_18
    move v6, v4

    .line 2068
    :cond_19
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->okToMergeCalls(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v2

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/phone/CallView;->showTwoCallsLayout(ZZZ)V

    .line 2070
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2071
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2072
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2074
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    .line 2075
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForBackgroundCall(Lcom/android/internal/telephony/Call;)V

    move v6, v4

    .line 2077
    goto/16 :goto_9

    .line 2080
    :cond_1a
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1b

    .line 2081
    const-string v0, "- updateScreen: One call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2083
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2086
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_9

    .line 2088
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1c

    const-string v0, "We have a single conference call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2090
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2091
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2092
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2096
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1f

    move v0, v4

    .line 2097
    :goto_a
    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_20

    move v1, v4

    .line 2098
    :goto_b
    if-eqz v0, :cond_1d

    if-nez v1, :cond_1e

    :cond_1d
    move v6, v4

    .line 2100
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    invoke-virtual {v0, v1, v6}, Lcom/android/phone/CallView;->showConferenceCallLayout(ZZ)V

    .line 2103
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    move v6, v4

    .line 2105
    goto/16 :goto_9

    :cond_1f
    move v0, v6

    .line 2096
    goto :goto_a

    :cond_20
    move v1, v6

    .line 2097
    goto :goto_b

    .line 2107
    :cond_21
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_23

    .line 2109
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_22

    const-string v0, "We have a single call on hold."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2110
    :cond_22
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    invoke-virtual {v0, v4, v1, v6}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 2111
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    move v6, v4

    .line 2112
    goto/16 :goto_9

    .line 2114
    :cond_23
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2116
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "We have a single active call."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2118
    :cond_24
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 2119
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 2120
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    .line 2121
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isEmergencyCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    invoke-virtual {v0, v6, v1, v6}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 2122
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 2123
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmPlayingAnimation()V

    .line 2131
    :goto_c
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->updateProviderOverlay()V

    .line 2132
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showInfoForMainCall(Lcom/android/internal/telephony/Call;)V

    move v6, v4

    goto/16 :goto_9

    .line 2125
    :cond_25
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2126
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->showAmRecordingAnimation()V

    goto :goto_c

    .line 2129
    :cond_26
    invoke-direct {p0}, Lcom/android/phone/SomcInCallScreen;->hideAmAnimation()V

    move v4, v6

    goto :goto_c

    .line 2137
    :cond_27
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_28

    const-string v5, "- updateScreen: Phone is idle."

    invoke-direct {p0, v5}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2143
    :cond_28
    if-ne v0, v3, :cond_2a

    .line 2144
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->isCallEndedInteractionDisplayable(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2145
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showCallEndedInteractionLayout(Lcom/android/internal/telephony/Connection;)V

    :cond_29
    :goto_d
    move v6, v4

    .line 2180
    goto/16 :goto_9

    .line 2147
    :cond_2a
    if-eq v0, v1, :cond_2b

    if-ne v0, v2, :cond_2d

    .line 2150
    :cond_2b
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->isCallEndedInteractionDisplayable(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 2151
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->showCallEndedInteractionLayout(Lcom/android/internal/telephony/Connection;)V

    goto :goto_d

    .line 2153
    :cond_2c
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen;->mDisconnectedConnection:Lcom/android/internal/telephony/Connection;

    invoke-static {v1, v2}, Lcom/android/phone/SomcPhoneUtils;->getCallFailedString(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    goto :goto_d

    .line 2173
    :cond_2d
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2e

    const-string v0, "- updateScreen: No disconnected calls."

    invoke-direct {p0, v0}, Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V

    .line 2175
    :cond_2e
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->clear()V

    .line 2176
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    if-eqz v0, :cond_29

    .line 2177
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen;->mCallWidgetManager:Lcom/android/phone/widget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/phone/widget/SomcCallWidgetManager;->clearStack()V

    goto :goto_d

    :cond_2f
    move v0, v4

    goto/16 :goto_1
.end method
