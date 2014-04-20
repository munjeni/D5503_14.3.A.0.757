.class public Lcom/android/phone/CallNotifier;
.super Landroid/os/Handler;
.source "CallNotifier.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/SomcCallRecorder$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;,
        Lcom/android/phone/CallNotifier$InCallTonePlayer;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/CallNotifier;


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallLogger:Lcom/android/phone/CallLogger;

.field private mCallWaitingTimeOut:Z

.field private mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mCallerInfoQueryState:I

.field private mCallerInfoQueryStateGuard:Ljava/lang/Object;

.field private mCurrentEmergencyToneState:I

.field private mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

.field private mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

.field private mIsCdmaRedialCall:Z

.field private mIsEmergencyToneOn:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

.field private mRinger:Lcom/android/phone/Ringer;

.field private mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

.field private mSilentRingerRequested:Z

.field private mVoicePrivacyState:Z


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V
    .locals 6
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p3, "ringer"    # Lcom/android/phone/Ringer;
    .param p4, "callLogger"    # Lcom/android/phone/CallLogger;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 215
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 122
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 132
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    .line 171
    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 181
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 182
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 186
    iput v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    .line 377
    new-instance v2, Lcom/android/phone/CallNotifier$1;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$1;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 2128
    new-instance v2, Lcom/android/phone/CallNotifier$2;

    invoke-direct {v2, p0}, Lcom/android/phone/CallNotifier$2;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 216
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 217
    iget-object v2, p1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 218
    iput-object p4, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    .line 220
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    .line 222
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 228
    new-instance v2, Lcom/android/phone/SomcTonePlayer;

    const/16 v3, 0x50

    invoke-direct {v2, v4, v3}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 231
    iput-object p3, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 232
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 233
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    .line 234
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v0, v2, v3, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 239
    :cond_0
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 241
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 245
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v2, p0}, Lcom/android/phone/SomcCallRecorder;->setEventListener(Lcom/android/phone/SomcCallRecorder$EventListener;)V

    .line 246
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CallNotifier;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onCfiChanged(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/phone/CallNotifier;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/CallNotifier;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/CallNotifier;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallNotifier;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallNotifier;

    .prologue
    .line 77
    iget v0, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    return v0
.end method

.method private checkCallRecording()V
    .locals 3

    .prologue
    .line 2208
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->isSecureMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2219
    :cond_0
    :goto_0
    return-void

    .line 2215
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b0125

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2218
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCallRecorder:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->stop()V

    goto :goto_0
.end method

.method private ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 529
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v3, :cond_0

    .line 533
    const-string v2, "CallNotifier"

    const-string v3, "Got onNewRingingConnection() on non-voice-capable device! Ignoring..."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :goto_0
    return v1

    .line 540
    :cond_0
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 541
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Incoming call while in ECM: always allow..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    :cond_1
    move v1, v2

    .line 542
    goto :goto_0

    .line 546
    :cond_2
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v0, v1

    .line 548
    .local v0, "provisioned":Z
    :goto_1
    if-nez v0, :cond_4

    .line 549
    const-string v2, "CallNotifier"

    const-string v3, "Ignoring incoming call: not provisioned"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "provisioned":Z
    :cond_3
    move v0, v2

    .line 546
    goto :goto_1

    .restart local v0    # "provisioned":Z
    :cond_4
    move v1, v2

    .line 577
    goto :goto_0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)Lcom/android/phone/CallNotifier;
    .locals 4

    .prologue
    .line 204
    const-class v1, Lcom/android/phone/CallNotifier;

    monitor-enter v1

    .line 205
    :try_start_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Lcom/android/phone/CallNotifier;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/phone/CallNotifier;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogger;)V

    sput-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    .line 210
    :goto_0
    sget-object v0, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    monitor-exit v1

    return-object v0

    .line 208
    :cond_0
    const-string v0, "CallNotifier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallNotifier;->sInstance:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 2222
    const-string v0, "CallNotifier"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    return-void
.end method

.method private onBatteryLow()V
    .locals 1

    .prologue
    .line 1496
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBatteryLow()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1500
    :cond_0
    return-void
.end method

.method private onCdmaCallWaiting(Landroid/os/AsyncResult;)V
    .locals 5

    .prologue
    const/16 v4, 0x18

    const/16 v3, 0x17

    const/4 v2, 0x0

    .line 1858
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1859
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1863
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    sget-object v1, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->SINGLE_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setCurrentCallState(Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;)V

    .line 1868
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1869
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- showing incoming call (CDMA call waiting)..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1870
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 1874
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1875
    const-wide/16 v0, 0x4e20

    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1879
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0, v2}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 1882
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1886
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;

    .line 1887
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->isPresent:I

    .line 1888
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCdmaCallWaiting: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1889
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 1890
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signalType:I

    .line 1891
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->alertPitch:I

    .line 1892
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaCallWaitingNotification;->signal:I

    .line 1893
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_3

    .line 1894
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCdmaCallWaiting: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1898
    :cond_3
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 1902
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v1, :cond_4

    .line 1903
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcTonePlayer;->playTone(I)V

    .line 1906
    :cond_4
    return-void
.end method

.method private onCdmaCallWaitingReject()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    .line 1927
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 1930
    .local v4, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_1

    .line 1932
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1934
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_0

    .line 1935
    iget-boolean v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    if-eqz v6, :cond_2

    move v1, v5

    .line 1941
    .local v1, "callLogType":I
    :goto_0
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v6, v0, v1}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 1943
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v2

    .line 1944
    .local v2, "date":J
    if-ne v1, v5, :cond_3

    .line 1946
    invoke-direct {p0, v0, v2, v3}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1953
    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Connection;)V

    .line 1957
    .end local v1    # "callLogType":I
    .end local v2    # "date":J
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 1959
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    return-void

    .line 1935
    .restart local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1949
    .restart local v1    # "callLogType":I
    .restart local v2    # "date":J
    :cond_3
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_1
.end method

.method private onCfiChanged(Z)V
    .locals 2

    .prologue
    .line 1453
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCfiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1457
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1463
    const-string v0, "CallNotifier"

    const-string v1, "Got onCfiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    :goto_0
    return-void

    .line 1466
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateCfi(Z)V

    goto :goto_0
.end method

.method private onCustomRingQueryComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, "isQueryExecutionTimeExpired":Z
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 667
    :try_start_0
    iget v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 668
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 669
    const/4 v0, 0x1

    .line 671
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    if-eqz v0, :cond_1

    .line 675
    const-string v1, "CallNotifier"

    const-string v2, "CallerInfo query took too long; falling back to default ringtone"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_2

    .line 694
    const-string v1, "CallNotifier"

    const-string v2, "onCustomRingQueryComplete: No incoming call! Bailing out..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :goto_0
    return-void

    .line 671
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 701
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "RINGING... (onCustomRingQueryComplete)"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 702
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v1}, Lcom/android/phone/Ringer;->ring()V

    .line 703
    iput-boolean v4, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 706
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "- showing incoming call (custom ring query complete)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 707
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method

.method private onCustomRingtoneQueryTimeout(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1043
    const-string v0, "CallNotifier"

    const-string v1, "CallerInfo query took too long; look up local fallback cache."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallerInfoCache;->getCacheEntry(Ljava/lang/String;)Lcom/android/phone/CallerInfoCache$CacheEntry;

    move-result-object v0

    .line 1050
    if-eqz v0, :cond_2

    .line 1051
    iget-boolean v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->sendToVoicemail:Z

    if-eqz v1, :cond_0

    .line 1052
    const-string v0, "send to voicemail flag detected (in fallback cache). hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1053
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 1071
    :goto_0
    return-void

    .line 1057
    :cond_0
    iget-object v1, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1058
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom ringtone found (in fallback cache), setting up ringer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1060
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    iget-object v0, v0, Lcom/android/phone/CallerInfoCache$CacheEntry;->customRingtone:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1070
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0

    .line 1067
    :cond_2
    const-string v0, "Failed to find fallback cache. Use default ringer tone."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 12

    .prologue
    .line 1074
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnect()...  CallManager state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1076
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1078
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/Connection;

    .line 1079
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    if-eqz v6, :cond_1

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDisconnect: cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", incoming = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", date = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1086
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 1087
    const/4 v0, 0x0

    .line 1088
    if-eqz v6, :cond_3e

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3e

    .line 1089
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "call_auto_retry"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v5, v0

    .line 1093
    :goto_0
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1095
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 1098
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->resetCdmaPhoneCallState()V

    .line 1101
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1102
    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1118
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 1119
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    .line 1120
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1123
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "cancelCallInProgressNotification()... (onDisconnect)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1124
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1135
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_5

    .line 1136
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v0, :cond_5

    .line 1137
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- stop call waiting tone"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1138
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 1139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 1143
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v7

    .line 1148
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmPlaying()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v7, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1149
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->stopGreeting()V

    .line 1154
    :cond_6
    const/4 v0, 0x0

    .line 1157
    if-eqz v6, :cond_8

    .line 1158
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1159
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_21

    .line 1160
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- need to play BUSY tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1161
    :cond_7
    const/4 v0, 0x2

    .line 1195
    :cond_8
    :goto_2
    if-nez v0, :cond_b

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_b

    if-eqz v6, :cond_b

    .line 1198
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1199
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_b

    .line 1201
    :cond_9
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- need to play CALL_ENDED tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1202
    :cond_a
    const/4 v0, 0x5

    .line 1203
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1207
    :cond_b
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_e

    .line 1210
    if-nez v0, :cond_c

    .line 1211
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1214
    :cond_c
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelCallInProgressNotifications()V

    .line 1221
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1222
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_d

    const-string v1, "onDisconnect: force InCallScreen to finish()"

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1223
    :cond_d
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 1224
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isBluetoothConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->isEndOrRejectBtPressed()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v1, v1, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    if-nez v1, :cond_e

    .line 1228
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->goToSleep()V

    .line 1233
    :cond_e
    if-eqz v6, :cond_1b

    .line 1234
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v8

    .line 1237
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1238
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v2

    .line 1240
    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v1

    .line 1241
    if-eqz v1, :cond_33

    .line 1242
    invoke-virtual {v2, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1245
    const/4 v1, 0x3

    .line 1246
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/am/SomcAmManager;->setHangupCallByDeviceSelf(Z)V

    :goto_3
    move v3, v1

    .line 1270
    :goto_4
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_f

    .line 1271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- callLogType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", UserData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1273
    :cond_f
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v1, v6, v3}, Lcom/android/phone/CallLogger;->logCall(Lcom/android/internal/telephony/Connection;I)V

    .line 1275
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 1276
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1277
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, v4}, Landroid/telephony/PhoneNumberUtils;->isLocalEmergencyNumber(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v9

    .line 1280
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v10, 0x2

    if-ne v4, v10, :cond_10

    .line 1281
    if-eqz v9, :cond_10

    iget v4, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v4, :cond_10

    .line 1283
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v4, :cond_10

    .line 1284
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v4}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 1290
    :cond_10
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f08001e

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 1294
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v11, 0x2

    if-ne v4, v11, :cond_36

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    const/4 v4, 0x1

    .line 1299
    :goto_5
    if-nez v9, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    if-eqz v10, :cond_13

    .line 1301
    :cond_12
    invoke-virtual {v7, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 1302
    iget-object v4, p0, Lcom/android/phone/CallNotifier;->mCallLogger:Lcom/android/phone/CallLogger;

    invoke-virtual {v4, v6}, Lcom/android/phone/CallLogger;->setAmContentValues(Lcom/android/internal/telephony/Connection;)V

    .line 1306
    :cond_13
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v9

    .line 1307
    const/4 v4, 0x3

    if-ne v3, v4, :cond_14

    .line 1311
    invoke-direct {p0, v6, v9, v10}, Lcom/android/phone/CallNotifier;->showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V

    .line 1313
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v3, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v3}, Lcom/android/phone/NotificationMgr;->updateBadgeIcon()V

    .line 1320
    :cond_14
    if-eqz v0, :cond_16

    .line 1321
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_15

    .line 1322
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- starting post-disconnect tone ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1324
    :cond_15
    new-instance v3, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1336
    :cond_16
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v3, :cond_38

    .line 1341
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-nez v0, :cond_37

    .line 1344
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1346
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_17

    .line 1347
    const-string v0, "- NOT showing in-call screen; releasing wake locks!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1349
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v3, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1357
    :cond_18
    :goto_6
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getUssdUserInputDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1358
    if-eqz v0, :cond_19

    .line 1359
    const-string v3, "- show ussdInputDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1360
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1366
    :cond_19
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1a

    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_1b

    :cond_1a
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v0, :cond_1b

    .line 1373
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-nez v0, :cond_3a

    .line 1374
    const/4 v0, 0x1

    if-ne v5, v0, :cond_39

    .line 1377
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/phone/PhoneUtils;->placeCall(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;ZLandroid/net/Uri;)I

    .line 1378
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    .line 1388
    :cond_1b
    :goto_8
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkCallRecording()V

    .line 1391
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->getAmConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 1392
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v7, v0}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 1406
    :cond_1c
    :goto_9
    return-void

    .line 1126
    :cond_1d
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1e

    const-string v0, "stopRing()... (onDisconnect)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1127
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1130
    :cond_1f
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_20

    const-string v0, "stopRing()... (onDisconnect)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1131
    :cond_20
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    goto/16 :goto_1

    .line 1162
    :cond_21
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_23

    .line 1163
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_22

    const-string v0, "- need to play CONGESTION tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1164
    :cond_22
    const/4 v0, 0x3

    goto/16 :goto_2

    .line 1165
    :cond_23
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_25

    .line 1166
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "- need to play CDMA_REORDER tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1167
    :cond_24
    const/4 v0, 0x7

    goto/16 :goto_2

    .line 1168
    :cond_25
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_INTERCEPT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_27

    .line 1169
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_26

    const-string v0, "- need to play CDMA_INTERCEPT tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1170
    :cond_26
    const/16 v0, 0x8

    goto/16 :goto_2

    .line 1171
    :cond_27
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_DROP:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_29

    .line 1172
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_28

    const-string v0, "- need to play CDMA_DROP tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1173
    :cond_28
    const/16 v0, 0x9

    goto/16 :goto_2

    .line 1174
    :cond_29
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_2b

    .line 1175
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2a

    const-string v0, "- need to play OUT OF SERVICE tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1176
    :cond_2a
    const/16 v0, 0xa

    goto/16 :goto_2

    .line 1177
    :cond_2b
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_2d

    .line 1178
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2c

    const-string v0, "- need to play TONE_UNOBTAINABLE_NUMBER tone!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1179
    :cond_2c
    const/16 v0, 0xe

    goto/16 :goto_2

    .line 1180
    :cond_2d
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v1, v2, :cond_8

    .line 1181
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2e

    .line 1182
    const-string v0, "- DisconnectCause is ERROR_UNSPECIFIED: play TONE_CALL_ENDED!"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1184
    :cond_2e
    const/4 v0, 0x5

    goto/16 :goto_2

    .line 1248
    :cond_2f
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v8, v1, :cond_30

    invoke-virtual {v2}, Lcom/android/phone/am/SomcAmManager;->isAmHangupCallByDeviceSelf()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1257
    :cond_30
    const/4 v1, 0x3

    goto/16 :goto_3

    .line 1259
    :cond_31
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v1, :cond_32

    const/4 v1, 0x3

    goto/16 :goto_3

    :cond_32
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1264
    :cond_33
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v8, v1, :cond_34

    const/4 v1, 0x3

    goto/16 :goto_3

    :cond_34
    const/4 v1, 0x1

    goto/16 :goto_3

    .line 1268
    :cond_35
    const/4 v1, 0x2

    move v3, v1

    goto/16 :goto_4

    .line 1294
    :cond_36
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1351
    :cond_37
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_18

    .line 1352
    const-string v0, "- still showing in-call screen; not releasing wake locks."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1363
    :cond_38
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_19

    const-string v0, "- phone still in use; not releasing wake locks."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1380
    :cond_39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_8

    .line 1383
    :cond_3a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    goto/16 :goto_8

    .line 1393
    :cond_3b
    invoke-virtual {v7, v6}, Lcom/android/phone/am/SomcAmManager;->isThisAnsweringMachineCall(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1394
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmRecording()Z

    move-result v0

    .line 1395
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmSaving()Z

    move-result v1

    .line 1396
    invoke-virtual {v7}, Lcom/android/phone/am/SomcAmManager;->isAmRecordEndByPickupCall()Z

    move-result v2

    .line 1400
    if-nez v0, :cond_3c

    if-nez v1, :cond_3c

    if-eqz v2, :cond_3d

    .line 1401
    :cond_3c
    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->showAnsweringMachineNotification(Lcom/android/internal/telephony/Connection;)V

    .line 1403
    :cond_3d
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v7, v0}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 1404
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/phone/am/SomcAmManager;->setAmConnection(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_9

    :cond_3e
    move v5, v0

    goto/16 :goto_0
.end method

.method private onDisplayInfo(Landroid/os/AsyncResult;)V
    .locals 3

    .prologue
    .line 1786
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;

    .line 1788
    if-eqz v0, :cond_1

    .line 1789
    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 1790
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDisplayInfo: displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1791
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v1, v0}, Lcom/android/phone/CdmaDisplayInfo;->displayInfoRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 1794
    const/16 v0, 0x19

    const-wide/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1797
    :cond_1
    return-void
.end method

.method private onMwiChanged(Z)V
    .locals 2

    .prologue
    .line 1426
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMwiChanged(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1430
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1436
    const-string v0, "CallNotifier"

    const-string v1, "Got onMwiChanged() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :goto_0
    return-void

    .line 1440
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v0, p1}, Lcom/android/phone/NotificationMgr;->updateMwi(Z)V

    goto :goto_0
.end method

.method private onNewRingingConnection(Landroid/os/AsyncResult;)V
    .locals 9
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v8, 0x1

    .line 393
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 394
    .local v1, "c":Lcom/android/internal/telephony/Connection;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onNewRingingConnection(): state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", conn = { "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " }"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 396
    if-nez v1, :cond_1

    .line 397
    const-string v6, "CallNotifier"

    const-string v7, "CallNotifier.onNewRingingConnection(): null connection!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    :goto_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 403
    .local v4, "ringing":Lcom/android/internal/telephony/Call;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 406
    .local v3, "phone":Lcom/android/internal/telephony/Phone;
    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->ignoreAllIncomingCalls(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 411
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 415
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    .line 419
    .local v0, "amManager":Lcom/android/phone/am/SomcAmManager;
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 420
    invoke-virtual {v0, v8}, Lcom/android/phone/am/SomcAmManager;->setHangupCallByDeviceSelf(Z)V

    .line 421
    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 425
    :cond_3
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->isRinging()Z

    move-result v6

    if-nez v6, :cond_4

    .line 426
    const-string v6, "CallNotifier"

    const-string v7, "CallNotifier.onNewRingingConnection(): connection not ringing!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 437
    .local v2, "fgPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 438
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 441
    :cond_5
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    .line 443
    .local v5, "state":Lcom/android/internal/telephony/Call$State;
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "- connection is ringing!  state = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 472
    :cond_6
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_7

    const-string v6, "Holding wake lock on new incoming connection."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 473
    :cond_7
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v7, Lcom/android/phone/PhoneGlobals$WakeState;->PARTIAL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v6, v7}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 477
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v6

    if-nez v6, :cond_8

    sget-object v6, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_a

    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_a

    .line 479
    :cond_8
    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V

    .line 503
    :goto_1
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->getAmAvailability()Lcom/android/phone/am/SomcAmManager$AmAvailability;

    move-result-object v6

    sget-object v7, Lcom/android/phone/am/SomcAmManager$AmAvailability;->AVAILABLE:Lcom/android/phone/am/SomcAmManager$AmAvailability;

    if-ne v6, v7, :cond_9

    .line 504
    sget-object v6, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0, v6}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 505
    invoke-virtual {v0, v1}, Lcom/android/phone/am/SomcAmManager;->setAmConnection(Lcom/android/internal/telephony/Connection;)V

    .line 508
    :cond_9
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "- onNewRingingConnection() done."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 481
    :cond_a
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_b

    const-string v6, "- starting call waiting tone..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 482
    :cond_b
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v6, :cond_c

    .line 483
    new-instance v6, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v6, p0, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 484
    iget-object v6, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 488
    :cond_c
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_d

    const-string v6, "- showing incoming call (this is a WAITING call)..."

    invoke-direct {p0, v6}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 489
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_1
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 784
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v7

    .line 785
    .local v7, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v9, :cond_0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPhoneStateChanged: state = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 787
    :cond_0
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 788
    .local v5, "fgPhone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 789
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v9, v10, :cond_1

    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v9, v10, :cond_3

    .line 792
    :cond_1
    iget-boolean v9, p0, Lcom/android/phone/CallNotifier;->mIsCdmaRedialCall:Z

    if-eqz v9, :cond_2

    .line 793
    const/16 v8, 0xb

    .line 794
    .local v8, "toneToPlay":I
    new-instance v9, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v9, p0, v8}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 797
    .end local v8    # "toneToPlay":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    .line 799
    :cond_3
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v9

    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    .line 807
    :cond_4
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneGlobals;->updateBluetoothIndication(Z)V

    .line 810
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9, v7}, Lcom/android/phone/PhoneGlobals;->updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 812
    sget-object v9, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v7, v9, :cond_a

    .line 814
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v9, :cond_5

    .line 815
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 816
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 819
    :cond_5
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v9, :cond_6

    const-string v9, "onPhoneStateChanged: OFF HOOK"

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 821
    :cond_6
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 825
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v9

    if-nez v9, :cond_7

    .line 826
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v10, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v9, v10}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 835
    :cond_7
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v9, :cond_8

    const-string v9, "stopRing()... (OFFHOOK state)"

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 836
    :cond_8
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v9}, Lcom/android/phone/Ringer;->stopRing()V

    .line 851
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v9, :cond_9

    const-string v9, "- posting UPDATE_IN_CALL_NOTIFICATION request..."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 853
    :cond_9
    const/16 v9, 0x1c

    invoke-virtual {p0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    const/16 v0, 0x3e8

    .line 855
    .local v0, "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    const/16 v9, 0x1c

    const-wide/16 v10, 0x3e8

    invoke-virtual {p0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 859
    .end local v0    # "IN_CALL_NOTIFICATION_UPDATE_DELAY":I
    :cond_a
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_e

    .line 860
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 861
    .local v2, "c":Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 862
    sget-boolean v9, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v9, :cond_b

    const-string v9, "onPhoneStateChanged: it is an emergency call."

    invoke-direct {p0, v9}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 863
    :cond_b
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 864
    .local v3, "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-nez v9, :cond_c

    .line 865
    new-instance v9, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    invoke-direct {v9, p0}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;-><init>(Lcom/android/phone/CallNotifier;)V

    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    .line 868
    :cond_c
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v9, :cond_d

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_12

    .line 869
    :cond_d
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "emergency_tone"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    .line 872
    iget v9, p0, Lcom/android/phone/CallNotifier;->mIsEmergencyToneOn:I

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-nez v9, :cond_e

    .line 874
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v9, :cond_e

    .line 875
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->start()V
    invoke-static {v9}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$200(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    .line 888
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_e
    :goto_0
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_f

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_f

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    const/4 v10, 0x4

    if-ne v9, v10, :cond_10

    .line 891
    :cond_f
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 892
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v9

    if-nez v9, :cond_10

    .line 895
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v9, :cond_10

    .line 896
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 897
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 902
    .end local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->checkCallRecording()V

    .line 904
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 905
    .restart local v3    # "callState":Lcom/android/internal/telephony/Call$State;
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v1

    .line 907
    .local v1, "amManager":Lcom/android/phone/am/SomcAmManager;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_11

    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->isAmWorking()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 908
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v9}, Lcom/android/phone/am/SomcAmManager;->notifyPhoneStateChangeToAm(Lcom/android/internal/telephony/Call$State;)V

    .line 909
    invoke-virtual {v1}, Lcom/android/phone/am/SomcAmManager;->getAmConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v9

    if-nez v9, :cond_11

    .line 910
    const/4 v4, 0x0

    .line 911
    .local v4, "conn":Lcom/android/internal/telephony/Connection;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 912
    .local v6, "phoneType":I
    const/4 v9, 0x2

    if-ne v6, v9, :cond_13

    .line 913
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    .line 919
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/phone/am/SomcAmManager;->setAmConnection(Lcom/android/internal/telephony/Connection;)V

    .line 922
    .end local v4    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "phoneType":I
    :cond_11
    return-void

    .line 878
    .end local v1    # "amManager":Lcom/android/phone/am/SomcAmManager;
    .restart local v2    # "c":Lcom/android/internal/telephony/Connection;
    :cond_12
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v9, :cond_e

    .line 879
    iget v9, p0, Lcom/android/phone/CallNotifier;->mCurrentEmergencyToneState:I

    if-eqz v9, :cond_e

    .line 880
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    if-eqz v9, :cond_e

    .line 881
    iget-object v9, p0, Lcom/android/phone/CallNotifier;->mEmergencyTonePlayerVibrator:Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;

    # invokes: Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->stop()V
    invoke-static {v9}, Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;->access$300(Lcom/android/phone/CallNotifier$EmergencyTonePlayerVibrator;)V

    goto :goto_0

    .line 914
    .end local v2    # "c":Lcom/android/internal/telephony/Connection;
    .restart local v1    # "amManager":Lcom/android/phone/am/SomcAmManager;
    .restart local v4    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v6    # "phoneType":I
    :cond_13
    const/4 v9, 0x1

    if-ne v6, v9, :cond_11

    .line 915
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    goto :goto_1
.end method

.method private onResendMute()V
    .locals 2

    .prologue
    .line 2165
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    .line 2166
    .local v0, "muteState":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2167
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 2168
    return-void

    .line 2166
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onRingbackTone(Landroid/os/AsyncResult;)V
    .locals 3
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 2141
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 2143
    .local v0, "playTone":Z
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2148
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-nez v1, :cond_0

    .line 2150
    new-instance v1, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 2151
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2154
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    if-eqz v1, :cond_0

    .line 2155
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;->stopTone()V

    .line 2156
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    goto :goto_0
.end method

.method private onSignalInfo(Landroid/os/AsyncResult;)V
    .locals 5

    .prologue
    .line 1804
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v0, :cond_1

    .line 1805
    const-string v0, "CallNotifier"

    const-string v1, "Got onSignalInfo() on non-voice-capable device! Ignoring..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isRealIncomingCall(Lcom/android/internal/telephony/Call$State;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1812
    invoke-virtual {p0}, Lcom/android/phone/CallNotifier;->stopSignalInfoTone()V

    goto :goto_0

    .line 1815
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    check-cast v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;

    .line 1817
    if-eqz v0, :cond_0

    .line 1818
    iget-boolean v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->isPresent:Z

    .line 1819
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSignalInfo: isPresent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1820
    :cond_3
    if-eqz v1, :cond_0

    .line 1821
    iget v1, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signalType:I

    .line 1822
    iget v2, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->alertPitch:I

    .line 1823
    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaSignalInfoRec;->signal:I

    .line 1825
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSignalInfo: uSignalType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uAlertPitch="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uSignal="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1828
    :cond_4
    invoke-static {v1, v2, v0}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->getAudioToneFromSignalInfo(III)I

    move-result v0

    .line 1832
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v1, v0}, Lcom/android/phone/SomcTonePlayer;->playTone(I)V

    goto :goto_0
.end method

.method private onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 711
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 713
    .local v0, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_1

    .line 715
    invoke-direct {p0, p1}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 716
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- showing incoming call (unknown connection appeared)..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 717
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    .line 721
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    .line 723
    :cond_1
    return-void
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 963
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 964
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 965
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 966
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 967
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 968
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 969
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 970
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 971
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 972
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xa

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 973
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xb

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 974
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    const/16 v1, 0xc

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/CallManager;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 975
    return-void
.end method

.method private resetAudioStateAfterDisconnect()V
    .locals 3

    .prologue
    .line 1412
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetAudioStateAfterDisconnect()..."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1414
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 1415
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->disconnectAudio()Z

    .line 1420
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1422
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 1423
    return-void
.end method

.method private showAnsweringMachineNotification(Lcom/android/internal/telephony/Connection;)V
    .locals 5

    .prologue
    .line 2030
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 2032
    if-eqz v0, :cond_4

    .line 2033
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_0

    .line 2036
    iget-object v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 2041
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v1, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v2, v1}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 2043
    iget-object v0, v2, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2044
    iget v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v3, v4, :cond_1

    .line 2045
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0b01c3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2054
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v3

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/phone/NotificationMgr;->notifyAnsweringMachine(Ljava/lang/String;Ljava/lang/String;J)V

    .line 2063
    :cond_0
    :goto_1
    return-void

    .line 2046
    :cond_1
    iget v3, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v3, v4, :cond_2

    .line 2047
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v2, 0x7f0b01c2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2048
    :cond_2
    invoke-virtual {v2}, Lcom/android/phone/SomcCallerInfo;->isVoiceMailNumber()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2049
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2051
    :cond_3
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v4, v2, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v3, v2, v0, v4}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2060
    :cond_4
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAnsweringMachineNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showIncomingCall()V
    .locals 3

    .prologue
    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIncomingCall()...  phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 750
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "call"

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getUssdUserInputDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 756
    .local v0, "ussdInputDialog":Landroid/app/AlertDialog;
    if-eqz v0, :cond_0

    .line 757
    const-string v1, "- HIDING ussdInputDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 758
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    sget-object v2, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 771
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- updating notification from showIncomingCall()..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 772
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateNotificationAndLaunchIncomingCallUi()V

    .line 773
    return-void

    .line 751
    .end local v0    # "ussdInputDialog":Landroid/app/AlertDialog;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showMissedCallNotification(Lcom/android/internal/telephony/Connection;J)V
    .locals 8

    .prologue
    .line 1986
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, p1, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 1988
    if-eqz v0, :cond_5

    .line 1991
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1992
    const-string v1, "showMissedCallNotification: Querying for CallerInfo on missed call..."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1994
    :cond_0
    iget-boolean v1, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v1, :cond_1

    .line 1997
    iget-object v5, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    .line 2002
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v1, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5, v1}, Lcom/android/phone/SomcPhoneUtils;->getNameFromCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;I)Ljava/lang/String;

    move-result-object v1

    .line 2004
    iget-object v2, v5, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2005
    iget v0, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    if-ne v0, v3, :cond_2

    .line 2006
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2015
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v3, v5, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, v5, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    move-wide v6, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 2023
    :cond_1
    :goto_1
    return-void

    .line 2007
    :cond_2
    iget v0, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v3, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v0, v3, :cond_3

    .line 2008
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2009
    :cond_3
    invoke-virtual {v5}, Lcom/android/phone/SomcCallerInfo;->isVoiceMailNumber()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2010
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2012
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget v3, v5, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v0, v5, v2, v3}, Lcom/android/phone/PhoneUtils;->modifyForSpecialCnapCases(Landroid/content/Context;Lcom/android/internal/telephony/CallerInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 2021
    :cond_5
    const-string v0, "CallNotifier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showMissedCallNotification: got null CallerInfo for Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private startIncomingCallQuery(Lcom/android/internal/telephony/Connection;)V
    .locals 5
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 595
    const/4 v1, 0x0

    .line 596
    .local v1, "shouldStartQuery":Z
    iget-object v3, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v3

    .line 597
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    if-nez v2, :cond_0

    .line 598
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 599
    const/4 v1, 0x1

    .line 601
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    if-eqz v1, :cond_4

    .line 604
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 607
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2, p1, p0, p0}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 612
    .local v0, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-boolean v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v2, :cond_2

    .line 613
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- CallerInfo already up to date, using available data"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 614
    :cond_1
    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-virtual {p0, v2, p0, v3}, Lcom/android/phone/CallNotifier;->onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V

    .line 645
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :goto_0
    return-void

    .line 601
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 616
    .restart local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_2
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- Starting query, posting timeout message."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 620
    :cond_3
    const/16 v2, 0x64

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 635
    .end local v0    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_4
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_5

    .line 636
    const-string v2, "RINGING... (request to ring arrived while query is running)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 638
    :cond_5
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    .line 642
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "- showing incoming call (couldn\'t start query)..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 643
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->showIncomingCall()V

    goto :goto_0
.end method


# virtual methods
.method getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 1965
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mPreviousCdmaCallState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method getVoicePrivacyState()Z
    .locals 1

    .prologue
    .line 1972
    iget-boolean v0, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 250
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 252
    :sswitch_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "RINGING... (new)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 253
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onNewRingingConnection(Landroid/os/AsyncResult;)V

    .line 254
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isScreenOn()Z

    move-result v3

    iput-boolean v3, v2, Lcom/android/phone/InCallUiState;->isScreenOnBeforeCalling:Z

    goto :goto_0

    .line 260
    :sswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    .line 263
    .local v0, "pb":Lcom/android/internal/telephony/PhoneBase;
    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    if-nez v2, :cond_3

    .line 265
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "RINGING... (PHONE_INCOMING_RING event)"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 266
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v2}, Lcom/android/phone/Ringer;->ring()V

    goto :goto_0

    .line 268
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "RING before NEW_RING, skipping"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 274
    .end local v0    # "pb":Lcom/android/internal/telephony/PhoneBase;
    :sswitch_2
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 278
    :sswitch_3
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "DISCONNECT"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 279
    :cond_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisconnect(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 283
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onUnknownConnectionAppeared(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 287
    :sswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCustomRingtoneQueryTimeout(Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :sswitch_6
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onMwiChanged(Z)V

    goto/16 :goto_0

    .line 295
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onBatteryLow()V

    goto/16 :goto_0

    .line 299
    :sswitch_8
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Received PHONE_CDMA_CALL_WAITING event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 300
    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onCdmaCallWaiting(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 304
    :sswitch_9
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "Received CDMA_CALL_WAITING_REJECT event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 305
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 309
    :sswitch_a
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "Received CALLWAITING_CALLERINFO_DISPLAY_DONE event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 310
    :cond_7
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTimeOut:Z

    .line 311
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCdmaCallWaitingReject()V

    goto/16 :goto_0

    .line 315
    :sswitch_b
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_8

    const-string v2, "Received CALLWAITING_ADDCALL_DISABLE_TIMEOUT event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 317
    :cond_8
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaPhoneCallState;->setAddCallMenuStateAfterCallWaiting(Z)V

    .line 318
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 322
    :sswitch_c
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "Received PHONE_STATE_DISPLAYINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 323
    :cond_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onDisplayInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 327
    :sswitch_d
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_a

    const-string v2, "Received PHONE_STATE_SIGNALINFO event"

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 328
    :cond_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onSignalInfo(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 332
    :sswitch_e
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_b

    const-string v2, "Received Display Info notification done event ..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 333
    :cond_b
    invoke-static {}, Lcom/android/phone/CdmaDisplayInfo;->dismissDisplayInfoRecord()V

    goto/16 :goto_0

    .line 337
    :sswitch_f
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_c

    const-string v2, "PHONE_ENHANCED_VP_ON..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 338
    :cond_c
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-nez v2, :cond_0

    .line 339
    const/4 v1, 0x6

    .line 340
    .local v1, "toneToPlay":I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 341
    iput-boolean v3, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 343
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_d

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 344
    :cond_d
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 349
    .end local v1    # "toneToPlay":I
    :sswitch_10
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_e

    const-string v2, "PHONE_ENHANCED_VP_OFF..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 350
    :cond_e
    iget-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    if-eqz v2, :cond_0

    .line 351
    const/4 v1, 0x6

    .line 352
    .restart local v1    # "toneToPlay":I
    new-instance v2, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 353
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/phone/CallNotifier;->mVoicePrivacyState:Z

    .line 355
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_f

    const-string v2, "- updating notification for VP state..."

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 356
    :cond_f
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 361
    .end local v1    # "toneToPlay":I
    :sswitch_11
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-direct {p0, v2}, Lcom/android/phone/CallNotifier;->onRingbackTone(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 365
    :sswitch_12
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onResendMute()V

    goto/16 :goto_0

    .line 369
    :sswitch_13
    iget-object v2, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 250
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_1
        0x6 -> :sswitch_c
        0x7 -> :sswitch_d
        0x8 -> :sswitch_8
        0x9 -> :sswitch_f
        0xa -> :sswitch_10
        0xb -> :sswitch_11
        0xc -> :sswitch_12
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_a
        0x18 -> :sswitch_b
        0x19 -> :sswitch_e
        0x1b -> :sswitch_9
        0x1c -> :sswitch_13
        0x64 -> :sswitch_5
    .end sparse-switch
.end method

.method isRinging()Z
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->isRinging()Z

    move-result v0

    return v0
.end method

.method public onNotEnoughStorage()V
    .locals 2

    .prologue
    .line 2177
    new-instance v0, Lcom/android/phone/CallNotifier$InCallTonePlayer;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallNotifier$InCallTonePlayer;-><init>(Lcom/android/phone/CallNotifier;I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2178
    return-void
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 985
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 986
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 987
    const-string v0, "CallerInfo query complete, posting missed call notification"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iget-object v4, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iget-object v5, p3, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/phone/NotificationMgr;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;J)V

    .line 1027
    :cond_1
    :goto_0
    return-void

    .line 993
    :cond_2
    instance-of v1, p2, Lcom/android/phone/CallNotifier;

    if-eqz v1, :cond_1

    .line 994
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "CallerInfo query complete (for CallNotifier), updating state for incoming call.."

    invoke-direct {p0, v1}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 998
    :cond_3
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1001
    iget-object v1, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryStateGuard:Ljava/lang/Object;

    monitor-enter v1

    .line 1002
    :try_start_0
    iget v2, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 1003
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier;->mCallerInfoQueryState:I

    .line 1004
    const/4 v0, 0x1

    .line 1006
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    if-eqz v0, :cond_1

    .line 1011
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    if-eqz v0, :cond_6

    .line 1012
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "send to voicemail flag detected. hanging up."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1013
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 1006
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1018
    :cond_6
    iget-object v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    .line 1019
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "custom ringtone found, setting up ringer."

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1020
    :cond_7
    check-cast p2, Lcom/android/phone/CallNotifier;

    iget-object v0, p2, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    .line 1021
    iget-object v1, p3, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->setCustomRingtoneUri(Landroid/net/Uri;)V

    .line 1024
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->onCustomRingQueryComplete()V

    goto :goto_0
.end method

.method public onRecorderStart()V
    .locals 0

    .prologue
    .line 2185
    return-void
.end method

.method public onRecorderStop()V
    .locals 0

    .prologue
    .line 2192
    return-void
.end method

.method public onResourceOccupied()V
    .locals 0

    .prologue
    .line 2199
    return-void
.end method

.method sendBatteryLow()V
    .locals 2

    .prologue
    .line 1491
    const/16 v1, 0x16

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1492
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1493
    return-void
.end method

.method sendCdmaCallWaitingReject()V
    .locals 1

    .prologue
    .line 1916
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1917
    return-void
.end method

.method sendMwiChangedDelayed(J)V
    .locals 2
    .param p1, "delayMillis"    # J

    .prologue
    .line 1448
    const/16 v1, 0x15

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1449
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1450
    return-void
.end method

.method silenceRinger()V
    .locals 1

    .prologue
    .line 1481
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/CallNotifier;->mSilentRingerRequested:Z

    .line 1482
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopRing()... (silenceRinger)"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mRinger:Lcom/android/phone/Ringer;

    invoke-virtual {v0}, Lcom/android/phone/Ringer;->stopRing()V

    .line 1484
    return-void
.end method

.method stopSignalInfoTone()V
    .locals 2

    .prologue
    .line 1847
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "stopSignalInfoTone: Stopping SignalInfo tone player"

    invoke-direct {p0, v0}, Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 1849
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    const/16 v1, 0x62

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcTonePlayer;->playTone(I)V

    .line 1851
    :cond_1
    return-void
.end method

.method updateCallNotifierRegistrationsAfterRadioTechnologyChange()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 925
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 926
    const-string v0, "CallNotifier"

    const-string v1, "updateCallNotifierRegistrationsAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 930
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 931
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 932
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 933
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 934
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 935
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 936
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 937
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 938
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 939
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 942
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    if-eqz v0, :cond_1

    .line 943
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    invoke-virtual {v0}, Lcom/android/phone/SomcTonePlayer;->release()V

    .line 944
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 948
    :cond_1
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mInCallRingbackTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 951
    iput-object v2, p0, Lcom/android/phone/CallNotifier;->mCallWaitingTonePlayer:Lcom/android/phone/CallNotifier$InCallTonePlayer;

    .line 953
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 954
    iget-object v0, p0, Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 957
    invoke-direct {p0}, Lcom/android/phone/CallNotifier;->registerForNotifications()V

    .line 958
    new-instance v0, Lcom/android/phone/SomcTonePlayer;

    const/4 v1, 0x0

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Lcom/android/phone/SomcTonePlayer;-><init>(II)V

    iput-object v0, p0, Lcom/android/phone/CallNotifier;->mSignalInfoTonePlayer:Lcom/android/phone/SomcTonePlayer;

    .line 960
    return-void
.end method
