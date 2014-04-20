.class public Lcom/android/phone/PhoneGlobals;
.super Landroid/content/ContextWrapper;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneGlobals$6;,
        Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;,
        Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$WakeupAlarm;,
        Lcom/android/phone/PhoneGlobals$WakeState;
    }
.end annotation


# static fields
.field static DBG:Z

.field private static ImsServiceConnection:Landroid/content/ServiceConnection;

.field static VDBG:Z

.field static mDockState:I

.field static mImsService:Lorg/codeaurora/ims/IImsService;

.field private static sMe:Lcom/android/phone/PhoneGlobals;

.field static sVoiceCapable:Z


# instance fields
.field callController:Lcom/android/phone/CallController;

.field callTimeStamp:Lcom/android/phone/CallTimeStamp;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

.field private final mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field final mCallRecorder:Lcom/android/phone/SomcCallRecorder;

.field private mContactNumIconDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mEndHeldCallAt3rdIncomingCall:Z

.field mHandler:Landroid/os/Handler;

.field private final mInCallNotificationMuteReceiver:Landroid/content/BroadcastReceiver;

.field private mInCallScreen:Lcom/android/phone/SomcInCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field mIsRFPowerBackoffEnabled:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field mManagedRoam:Lcom/android/phone/ManagedRoaming;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mNationalRoamingSettings:I

.field private mNationalRoamingSupported:Z

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTransmitPowerReceiver:Landroid/content/BroadcastReceiver;

.field private mTtyEnabled:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mUssdUserInputDialog:Landroid/app/AlertDialog;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

.field private mWakeupAlarm:Lcom/android/phone/PhoneGlobals$WakeupAlarm;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 138
    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    .line 144
    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    .line 260
    sput v0, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 261
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 988
    new-instance v0, Lcom/android/phone/PhoneGlobals$3;

    invoke-direct {v0}, Lcom/android/phone/PhoneGlobals$3;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneGlobals;->ImsServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 605
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 256
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    .line 257
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    .line 258
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mShowBluetoothIndication:Z

    .line 296
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 298
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 310
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    .line 315
    new-instance v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 322
    new-instance v0, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    invoke-direct {v0}, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 325
    new-instance v0, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneGlobals$InCallNotificationMuteReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallNotificationMuteReceiver:Landroid/content/BroadcastReceiver;

    .line 341
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSupported:Z

    .line 342
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSettings:I

    .line 344
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mEndHeldCallAt3rdIncomingCall:Z

    .line 367
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 386
    new-instance v0, Lcom/android/phone/PhoneGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$1;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 421
    new-instance v0, Lcom/android/phone/PhoneGlobals$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$2;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    .line 602
    new-instance v0, Lcom/android/phone/SomcCallRecorder;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lcom/android/phone/SomcCallRecorder;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    .line 2505
    new-instance v0, Lcom/android/phone/PhoneGlobals$5;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$5;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    .line 606
    sput-object p0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    .line 607
    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/PhoneGlobals;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->updateNationalDataRoaming()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->upgradePreferredModeIfNeeded()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AccelerometerListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneGlobals;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/SomcInCallScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneGlobals;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/PhoneGlobals;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1104
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1105
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1106
    const-string v1, "missed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1107
    return-object v0
.end method

.method static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1148
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1150
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1124
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1125
    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1128
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1129
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 1138
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1139
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1140
    return-object v0
.end method

.method static createMuteOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SET_MUTE_FROM_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1170
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method static createPendingCallLogIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 1111
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1112
    .local v0, "callLogIntent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v1

    .line 1113
    .local v1, "taskStackBuilder":Landroid/app/TaskStackBuilder;
    invoke-virtual {v1, v0}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1114
    invoke-virtual {v1, v2, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v2

    return-object v2
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1154
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1157
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1174
    const-class v0, Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/PhoneGlobals;
    .locals 2

    .prologue
    .line 1078
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    if-nez v0, :cond_0

    .line 1079
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PhoneGlobals here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1081
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1088
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 1165
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 2313
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2314
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 2315
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :cond_0
    :goto_0
    return-void

    .line 2317
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "PhoneApp"

    const-string v2, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2320
    :cond_2
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 2321
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 2336
    const-string v0, "tty_off"

    move-object v1, v0

    .line 2339
    :goto_1
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2340
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 2326
    :pswitch_0
    const-string v0, "tty_full"

    move-object v1, v0

    .line 2327
    goto :goto_1

    .line 2329
    :pswitch_1
    const-string v0, "tty_vco"

    move-object v1, v0

    .line 2330
    goto :goto_1

    .line 2332
    :pswitch_2
    const-string v0, "tty_hco"

    move-object v1, v0

    .line 2333
    goto :goto_1

    .line 2324
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 2167
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 2171
    const-string v1, ""

    .line 2173
    if-eqz v0, :cond_0

    .line 2174
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 2175
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1, v0}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 2176
    packed-switch v0, :pswitch_data_0

    .line 2188
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2182
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->updateNationalDataRoaming()V

    goto :goto_0

    .line 2176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 2345
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2347
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 2348
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2352
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 2353
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 2

    .prologue
    .line 1792
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "initForNewRadioTechnology..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1796
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1797
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1800
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1801
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1802
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v0, :cond_2

    .line 1804
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->updateBtHandsfreeAfterRadioTechnologyChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1809
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_3

    .line 1810
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1812
    :cond_3
    return-void

    .line 1805
    :catch_0
    move-exception v0

    .line 1806
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWakeupAlarm()V
    .locals 2

    .prologue
    .line 1013
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1015
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1016
    new-instance v1, Lcom/android/phone/PhoneGlobals$4;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/PhoneGlobals$4;-><init>(Lcom/android/phone/PhoneGlobals;I)V

    iput-object v1, p0, Lcom/android/phone/PhoneGlobals;->mWakeupAlarm:Lcom/android/phone/PhoneGlobals$WakeupAlarm;

    goto :goto_0
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1786
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "onMMIComplete()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1787
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1788
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1789
    return-void
.end method

.method static setDebugLevel(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2454
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Debug level changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2455
    packed-switch p0, :pswitch_data_0

    .line 2465
    sput-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    .line 2466
    sput-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    .line 2469
    :goto_0
    return-void

    .line 2457
    :pswitch_0
    sput-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    .line 2458
    sput-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    goto :goto_0

    .line 2461
    :pswitch_1
    sput-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    .line 2462
    sput-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    goto :goto_0

    .line 2455
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .param p0, "bluetoothState"    # I
    .param p1, "bluetoothAudioState"    # I
    .param p2, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1887
    sget-object v2, Lcom/android/phone/PhoneGlobals$6;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1905
    :cond_0
    :goto_0
    return v0

    .line 1893
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1902
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 1887
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateDataRoaming()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2197
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v0

    .line 2199
    .local v0, "dataRoamingSetting":I
    if-nez v0, :cond_0

    .line 2200
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 2213
    :goto_0
    return-void

    .line 2201
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2202
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 2203
    :cond_1
    if-ne v0, v3, :cond_3

    .line 2204
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->isNationalRoaming(Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2205
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v3}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 2207
    :cond_2
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0

    .line 2210
    :cond_3
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto :goto_0
.end method

.method private updateNationalDataRoaming()V
    .locals 2

    .prologue
    .line 2191
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSupported:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getNationalDataRoamingSetting()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2193
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->updateDataRoaming()V

    .line 2195
    :cond_0
    return-void
.end method

.method private upgradePreferredModeIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 2472
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2475
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2477
    const-string v2, "last_forced_preferred_network_mode"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2481
    if-ltz v0, :cond_1

    if-eq v2, v0, :cond_1

    .line 2482
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2485
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 2487
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2488
    const-string v2, "last_forced_preferred_network_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2489
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2502
    :cond_0
    :goto_0
    return-void

    .line 2490
    :cond_1
    if-ne v0, v3, :cond_0

    if-eq v2, v0, :cond_0

    .line 2498
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2499
    const-string v2, "last_forced_preferred_network_mode"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2500
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method


# virtual methods
.method public allowEndingHeldCallAt3rdIncomingCall()Z
    .locals 1

    .prologue
    .line 2309
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mEndHeldCallAt3rdIncomingCall:Z

    return v0
.end method

.method public createImsService()V
    .locals 4

    .prologue
    .line 974
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isCallOnImsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.ims.IImsService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/phone/PhoneGlobals;->ImsServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 979
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 980
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMSService bound request : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 981
    :catch_0
    move-exception v0

    .line 982
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 983
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring IMS class not found exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method dismissCallScreen()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method displayCallScreen()V
    .locals 4

    .prologue
    .line 1181
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1186
    const-string v0, "PhoneApp"

    const-string v1, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "stack dump"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1201
    :goto_0
    return-void

    .line 1193
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1200
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 1194
    :catch_0
    move-exception v0

    .line 1198
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 1

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object v0
.end method

.method public getContactNumIconDataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2289
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mContactNumIconDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mContactNumIconDataMap:Ljava/util/Map;

    .line 2293
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mContactNumIconDataMap:Ljava/util/Map;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1782
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method public getNationalDataRoamingSetting()I
    .locals 1

    .prologue
    .line 1056
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSettings:I

    return v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 1361
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPUKEntryProgressDialog()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 1378
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 418
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 1092
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getUpdateLock()Landroid/os/UpdateLock;
    .locals 1

    .prologue
    .line 1770
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    return-object v0
.end method

.method public getUssdUserInputDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 1382
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUssdUserInputDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public goToSleep()V
    .locals 3

    .prologue
    .line 1552
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1553
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 1554
    return-void
.end method

.method public isBluetoothConnected()Z
    .locals 2

    .prologue
    .line 1562
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBluetoothHeadsetAudioOn()Z
    .locals 2

    .prologue
    .line 1100
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

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
    .line 1262
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isEndOrRejectBtPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1821
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 1254
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1255
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isShowingCallScreenForProximity()Z
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1291
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 1227
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 1060
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_1

    .line 1061
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z

    .line 1067
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1069
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 1072
    :cond_0
    return-void

    .line 1063
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 9

    .prologue
    const/16 v8, 0x20

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 612
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_16

    .line 613
    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->setDebugLevel(I)V

    .line 617
    :goto_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v3, "onCreate()..."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    :cond_0
    const v0, 0x7f0d0003

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->setTheme(I)V

    .line 621
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 626
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x111003c

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 633
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080032

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsRFPowerBackoffEnabled:Z

    .line 636
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_e

    .line 638
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 641
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 645
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 647
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 648
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 650
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->createImsService()V

    .line 656
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 658
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 660
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 662
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 664
    if-ne v0, v7, :cond_1

    .line 666
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 667
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 670
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 672
    new-instance v0, Landroid/content/Intent;

    const-class v4, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v0, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v4, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 679
    :goto_1
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    .line 682
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    .line 683
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v4, 0x1000001a

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 686
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v4, 0x20000001

    const-string v5, "PhoneApp"

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 689
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 691
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const-string v4, "PhoneApp"

    invoke-virtual {v0, v8, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 694
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mProximityWakeLock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 698
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 703
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsRFPowerBackoffEnabled:Z

    if-eqz v0, :cond_5

    .line 704
    new-instance v0, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    .line 706
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mRFPowerBackoffAccelerometerListener:Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcRFPowerBackoffAccelerometerListener;->enable(Z)V

    .line 707
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "PhoneApp"

    const-string v4, "create SomcRFPowerBackoffAccelerometerListener"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    :cond_5
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 711
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 715
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 720
    new-instance v0, Landroid/os/UpdateLock;

    const-string v4, "phone"

    invoke-direct {v0, v4}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    .line 722
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: mUpdateLock: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :cond_6
    new-instance v0, Lcom/android/phone/CallLogger;

    new-instance v4, Lcom/android/phone/CallLogAsync;

    invoke-direct {v4}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-direct {v0, p0, v4}, Lcom/android/phone/CallLogger;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogAsync;)V

    .line 729
    invoke-static {p0, v0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallController;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    .line 732
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 738
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 744
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    invoke-static {p0, v4, v5, v0}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 748
    invoke-static {p0}, Lcom/android/phone/ManagedRoaming;->init(Landroid/content/Context;)Lcom/android/phone/ManagedRoaming;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mManagedRoam:Lcom/android/phone/ManagedRoaming;

    .line 750
    const-string v0, "ro.debuggable"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 751
    new-instance v0, Lcom/android/phone/CallTimeStamp;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTimeStamp;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->callTimeStamp:Lcom/android/phone/CallTimeStamp;

    .line 752
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->callTimeStamp:Lcom/android/phone/CallTimeStamp;

    invoke-virtual {v0}, Lcom/android/phone/CallTimeStamp;->activate()V

    .line 756
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_9

    .line 758
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_8

    const-string v4, "PhoneApp"

    const-string v5, "register for ICC status"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_8
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-interface {v0, v4, v5, v6}, Lcom/android/internal/telephony/IccCard;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 766
    :cond_9
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x34

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 769
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 772
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    .line 775
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 777
    const-string v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 778
    const-string v4, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 779
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 780
    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 781
    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 782
    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 783
    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 784
    const-string v4, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 786
    const-string v4, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 787
    const-string v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 788
    const-string v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 789
    iget-boolean v4, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v4, :cond_a

    .line 790
    const-string v4, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    :cond_a
    const-string v4, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 793
    const-string v4, "com.android.phone.intent.ACTION_DATA_TRAFFIC_SWITCH"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 798
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 800
    new-instance v4, Lcom/android/phone/SomcTransmitPowerManager;

    invoke-direct {v4}, Lcom/android/phone/SomcTransmitPowerManager;-><init>()V

    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->mTransmitPowerReceiver:Landroid/content/BroadcastReceiver;

    .line 803
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080036

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 805
    if-eqz v4, :cond_b

    .line 808
    new-instance v4, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;

    invoke-direct {v4, p0}, Lcom/android/phone/SomcRFPowerBackoffPSensorListener;-><init>(Landroid/content/Context;)V

    .line 809
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_b

    const-string v4, "PhoneApp"

    const-string v5, "create SomcRFPowerBackoffPSensorListener"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_b
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 815
    if-eqz v4, :cond_c

    .line 816
    const-string v4, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_c

    const-string v4, "PhoneApp"

    const-string v5, "Register Wi-Fi Direct intentfilter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_c
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080037

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 826
    if-eqz v4, :cond_d

    .line 827
    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 829
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "PhoneApp"

    const-string v5, "Register Wi-Fi Tethering intentfilter"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :cond_d
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mTransmitPowerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 835
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "com.android.phone.ACTION_SET_MUTE_FROM_NOTIFICATION"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 837
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mInCallNotificationMuteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 842
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 849
    const/16 v4, 0x3e0

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 852
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 854
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 855
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/android/phone/SomcMediaButtonBroadcastReceiver;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 859
    const v0, 0x7f05000c

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 861
    const/high16 v0, 0x7f050000

    invoke-static {p0, v0, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 866
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 868
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->initWakeupAlarm()V

    .line 871
    :cond_e
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v7, :cond_f

    .line 880
    :cond_f
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 883
    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 892
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v0, :cond_10

    .line 893
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "preferred_tty_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 898
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    const-string v4, "ttyEnabled"

    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    if-eqz v0, :cond_18

    move v0, v1

    :goto_2
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 900
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 902
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 906
    :cond_10
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 907
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 910
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HACSetting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_19

    const-string v3, "ON"

    :goto_3
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 915
    if-eqz v4, :cond_11

    .line 916
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sonyericsson.telephony.intent.action.HAC_ENABLED_CHANGE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 917
    const-string v3, "hacEnabled"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 918
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 926
    :cond_11
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSupported:Z

    .line 928
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSupported:Z

    if-eqz v0, :cond_12

    .line 929
    const-string v0, "national_data_roaming_users_choice_pref"

    invoke-virtual {p0, v0, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 931
    const-string v1, "national_data_roaming_setting"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 932
    const-string v1, "national_data_roaming_setting"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->setNationalDataRoamingSetting(I)V

    .line 940
    :cond_12
    :goto_4
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 943
    :cond_13
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 944
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/phone/DataTrafficExceptMmsNotifier;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 946
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 952
    :cond_14
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->restoreDualMicNoiseSuppressionUsed(Landroid/content/Context;)V

    .line 953
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 954
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->restoreEqualizerUsed()V

    .line 955
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->restoreSpeakerVoiceEnhancementUsed()V

    .line 956
    invoke-static {}, Lcom/android/phone/SomcPhoneUtils;->restoreSlowTalkUsed()V

    .line 960
    :cond_15
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mEndHeldCallAt3rdIncomingCall:Z

    .line 966
    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->init()V

    .line 968
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->upgradePreferredModeIfNeeded()V

    .line 970
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->deleteUnnecessaryFile()V

    .line 971
    return-void

    .line 615
    :cond_16
    invoke-static {v2}, Lcom/android/phone/PhoneGlobals;->setDebugLevel(I)V

    goto/16 :goto_0

    .line 676
    :cond_17
    iput-object v6, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    goto/16 :goto_1

    :cond_18
    move v0, v2

    .line 899
    goto/16 :goto_2

    .line 911
    :cond_19
    const-string v3, "OFF"

    goto/16 :goto_3

    .line 935
    :cond_1a
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0198

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->setNationalDataRoamingSetting(I)V

    goto/16 :goto_4
.end method

.method public orientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1683
    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    .line 1684
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1685
    return-void
.end method

.method pokeUserActivity()V
    .locals 4

    .prologue
    .line 1573
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pokeUserActivity()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1575
    return-void
.end method

.method proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    .locals 3

    .prologue
    .line 1435
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestWakeState("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1436
    :cond_0
    monitor-enter p0

    .line 1437
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    if-eq v0, p1, :cond_3

    .line 1438
    sget-object v0, Lcom/android/phone/PhoneGlobals$6;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1458
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1459
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1461
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1462
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1466
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 1468
    :cond_3
    monitor-exit p0

    .line 1469
    return-void

    .line 1442
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1443
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1468
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1450
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1451
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetLatestActiveCallOrigin()V
    .locals 8

    .prologue
    .line 2403
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v0, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2404
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 2405
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    .line 2406
    const-string v4, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentTimeMillis: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", saved timestamp for call origin: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    :cond_0
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    sub-long v0, v2, v0

    const-wide/16 v4, 0x7530

    cmp-long v0, v0, v4

    if-gez v0, :cond_2

    .line 2411
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    .line 2412
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Resume previous call origin ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-wide v2, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2421
    :goto_0
    return-void

    .line 2418
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    const-string v1, "Drop previous call origin and set the current one to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setBeginningCall(Z)V
    .locals 1
    .param p1, "beginning"    # Z

    .prologue
    .line 1585
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mBeginningCall:Z

    .line 1587
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1588
    return-void
.end method

.method setEmergencyCallRetryCount(I)V
    .locals 1
    .param p1, "retryCount"    # I

    .prologue
    .line 2356
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_0

    .line 2357
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallScreen;->setEmergencyCallRetryCount(I)V

    .line 2359
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/SomcInCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/SomcInCallScreen;

    .prologue
    .line 1239
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    .line 1240
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 3
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 2381
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 2382
    if-eqz p1, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 2387
    :goto_0
    return-void

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    goto :goto_0
.end method

.method public setNationalDataRoamingSetting(I)V
    .locals 4
    .param p1, "userchoice"    # I

    .prologue
    .line 1045
    iget v2, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSettings:I

    if-eq v2, p1, :cond_0

    .line 1046
    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSettings:I

    .line 1047
    const-string v2, "national_data_roaming_users_choice_pref"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1048
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1049
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "national_data_roaming_setting"

    iget v3, p0, Lcom/android/phone/PhoneGlobals;->mNationalRoamingSettings:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1050
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1052
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->updateDataRoaming()V

    .line 1053
    return-void
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1357
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    .line 1358
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 1375
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 410
    return-void
.end method

.method public setUssdUserInputDialog(Landroid/app/AlertDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/AlertDialog;

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mUssdUserInputDialog:Landroid/app/AlertDialog;

    .line 1387
    return-void
.end method

.method updateBluetoothIndication(Z)V
    .locals 3

    .prologue
    .line 1850
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mShowBluetoothIndication:Z

    .line 1853
    if-eqz p1, :cond_2

    .line 1856
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->requestUpdateBluetoothIndication()V

    .line 1857
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1862
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1863
    return-void
.end method

.method updateInCallScreen()V
    .locals 2

    .prologue
    .line 2276
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_1

    .line 2281
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->requestUpdateScreen()V

    .line 2283
    :cond_1
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1694
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_3

    .line 1695
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1696
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1702
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v0, :cond_4

    .line 1707
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1708
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    .line 1720
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v0, :cond_1

    .line 1722
    iput v2, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    .line 1723
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1725
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_6

    .line 1727
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1728
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1729
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1730
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1741
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeupAlarm:Lcom/android/phone/PhoneGlobals$WakeupAlarm;

    if-eqz v0, :cond_2

    .line 1742
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v0, :cond_7

    .line 1743
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeupAlarm:Lcom/android/phone/PhoneGlobals$WakeupAlarm;

    invoke-interface {v0}, Lcom/android/phone/PhoneGlobals$WakeupAlarm;->startWakeupAlarm()V

    .line 1750
    :cond_2
    :goto_3
    iput-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mBeginningCall:Z

    .line 1756
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_3

    .line 1757
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v3, :cond_8

    :goto_4
    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallScreen;->updateKeyguardPolicy(Z)V

    .line 1760
    :cond_3
    return-void

    .line 1711
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1712
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    goto :goto_0

    :cond_5
    move v0, v2

    .line 1723
    goto :goto_1

    .line 1733
    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    const-string v3, "PhoneApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to unregister mScreenReceiver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1745
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeupAlarm:Lcom/android/phone/PhoneGlobals$WakeupAlarm;

    invoke-interface {v0}, Lcom/android/phone/PhoneGlobals$WakeupAlarm;->stopWakeupAlarm()V

    goto :goto_3

    :cond_8
    move v1, v2

    .line 1757
    goto :goto_4
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1619
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateProximitySensorMode: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1622
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 1626
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z

    if-eqz v0, :cond_6

    :cond_1
    move v4, v1

    .line 1634
    :goto_0
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    move v3, v1

    .line 1636
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreenForProximity()Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz v3, :cond_8

    move v0, v1

    :goto_2
    or-int/2addr v4, v0

    .line 1643
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_10

    .line 1644
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->okToShowDialpad()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    .line 1649
    :goto_3
    if-eqz v0, :cond_a

    if-eqz v3, :cond_a

    move v0, v1

    :goto_4
    or-int/2addr v0, v4

    .line 1651
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v4, :cond_2

    iget-boolean v4, p0, Lcom/android/phone/PhoneGlobals;->mBeginningCall:Z

    if-eqz v4, :cond_c

    :cond_2
    if-nez v0, :cond_c

    if-nez v3, :cond_c

    .line 1655
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1656
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1678
    :cond_4
    :goto_5
    monitor-exit v5

    .line 1680
    :cond_5
    return-void

    :cond_6
    move v4, v2

    .line 1626
    goto :goto_0

    :cond_7
    move v3, v2

    .line 1634
    goto :goto_1

    :cond_8
    move v0, v2

    .line 1636
    goto :goto_2

    :cond_9
    move v0, v2

    .line 1644
    goto :goto_3

    :cond_a
    move v0, v2

    .line 1649
    goto :goto_4

    .line 1659
    :cond_b
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1678
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1664
    :cond_c
    :try_start_1
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1665
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: releasing..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    :cond_d
    if-eqz v0, :cond_e

    .line 1671
    :goto_6
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_5

    :cond_e
    move v2, v1

    .line 1669
    goto :goto_6

    .line 1673
    :cond_f
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    .line 1674
    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: lock already released."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :cond_10
    move v0, v2

    goto :goto_3
.end method

.method updateWakeState()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1496
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 1501
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v5

    .line 1506
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1516
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v3, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    .line 1524
    :goto_1
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWakeState: callscreen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dialer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", speaker "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v0, :cond_6

    move v0, v1

    .line 1536
    :goto_2
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_7

    move v3, v1

    .line 1537
    :goto_3
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    move v4, v1

    .line 1539
    :goto_4
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    move v2, v1

    .line 1540
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateWakeState: keepScreenOn = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (isRinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", isDialing "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showingDisc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_3
    if-eqz v2, :cond_9

    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    :goto_5
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1546
    return-void

    :cond_4
    move v0, v2

    .line 1506
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 1516
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 1535
    goto :goto_2

    :cond_7
    move v3, v2

    .line 1536
    goto :goto_3

    :cond_8
    move v4, v2

    .line 1537
    goto :goto_4

    .line 1545
    :cond_9
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    goto :goto_5
.end method

.method wakeUpScreen()V
    .locals 3

    .prologue
    .line 1476
    monitor-enter p0

    .line 1477
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    if-ne v0, v1, :cond_1

    .line 1478
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1481
    :cond_1
    monitor-exit p0

    .line 1482
    return-void

    .line 1481
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
