.class public Lcom/android/phone/CallFeaturesSetting;
.super Landroid/preference/PreferenceActivity;
.source "CallFeaturesSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;
.implements Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;,
        Lcom/android/phone/CallFeaturesSetting$VolteHandler;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;,
        Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;
    }
.end annotation


# static fields
.field private static final FORWARDING_SETTINGS_REASONS:[I

.field public static final FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

.field private static final NUM_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final EVENT_GET_VOLTE_STATE:I

.field private final EVENT_SET_VOLTE_STATE:I

.field private final mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

.field private mAmAlertCheckBox:Landroid/widget/CheckBox;

.field private mAnsweringMachineSettings:Landroid/preference/PreferenceScreen;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

.field private mButtonDTMF:Landroid/preference/ListPreference;

.field private mButtonHAC:Landroid/preference/CheckBoxPreference;

.field private mButtonSipCallOptions:Landroid/preference/ListPreference;

.field private mButtonTTY:Landroid/preference/ListPreference;

.field private mChangingVMorFwdDueToProviderChange:Z

.field private mContactListIntent:Landroid/content/Intent;

.field private mCurrentDialogId:I

.field mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

.field private mExpectedChangeResultReasons:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mForeground:Z

.field private mForwardingChangeResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/AsyncResult;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mFwdChangesRequireRollback:Z

.field private final mGetOptionComplete:Landroid/os/Handler;

.field mHeaderSize:I

.field private mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

.field private mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field private mNewVMNumber:Ljava/lang/String;

.field private mOldVmNumber:Ljava/lang/String;

.field private mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mPreviousVMProviderKey:Ljava/lang/String;

.field private mReadingSettingsForDefaultProvider:Z

.field private final mRevertOptionComplete:Landroid/os/Handler;

.field private final mRingtoneLookupComplete:Landroid/os/Handler;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private final mSetOptionComplete:Landroid/os/Handler;

.field private mShowDualMicNoiseSuppression:Z

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

.field private mVMChangeCompletedSuccessfully:Z

.field private mVMOrFwdSetError:I

.field private mVMProviderSettingsForced:Z

.field private final mVMProvidersData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

.field private mVoicemailChangeResult:Landroid/os/AsyncResult;

.field private mVoicemailNotificationRingtone:Landroid/preference/Preference;

.field private mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

.field private mVoicemailProviders:Landroid/preference/ListPreference;

.field private mVoicemailSettings:Landroid/preference/PreferenceScreen;

.field private mVolte:Landroid/preference/CheckBoxPreference;

.field private mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    .line 369
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 232
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->EVENT_GET_VOLTE_STATE:I

    .line 233
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->EVENT_SET_VOLTE_STATE:I

    .line 294
    const-string v0, "QOEMHOOK"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mHeaderSize:I

    .line 309
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$1;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    .line 355
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/CallFeaturesSetting$CallFeatureSettingsBroadcastReceiver;-><init>(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    .line 456
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 462
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 469
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 474
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 479
    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 484
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 490
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 496
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 502
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 508
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 514
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 524
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    .line 550
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1106
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$2;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    .line 1275
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$3;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$3;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    .line 1341
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$4;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$4;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    .line 2681
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkForwardingCompleted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/phone/CallFeaturesSetting;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleSetVMOrFwdMessage()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/CallFeaturesSetting;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/CallFeaturesSetting;ILandroid/preference/Preference;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/preference/Preference;
    .param p3, "x3"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/CallFeaturesSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updateEqualizerSummary(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/CallFeaturesSetting;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/phone/CallFeaturesSetting;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->updateNetworkRelatedSettings(Z)V

    return-void
.end method

.method static synthetic access$300()[I
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # I

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/CallFeaturesSetting;)Landroid/os/AsyncResult;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/CallFeaturesSetting;Landroid/os/AsyncResult;)Landroid/os/AsyncResult;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/CallFeaturesSetting;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/phone/CallFeaturesSetting;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;
    .param p1, "x1"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/phone/CallFeaturesSetting;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/CallFeaturesSetting;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallFeaturesSetting;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    return-object v0
.end method

.method private checkForwardingCompleted()Z
    .locals 4

    .prologue
    .line 1379
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-nez v3, :cond_1

    .line 1380
    const/4 v2, 0x1

    .line 1392
    .local v2, "result":Z
    :cond_0
    :goto_0
    return v2

    .line 1384
    .end local v2    # "result":Z
    :cond_1
    const/4 v2, 0x1

    .line 1385
    .restart local v2    # "result":Z
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1386
    .local v1, "reason":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1387
    const/4 v2, 0x0

    .line 1388
    goto :goto_0
.end method

.method private checkFwdChangeSuccess()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1398
    const/4 v3, 0x0

    .line 1399
    .local v3, "result":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1401
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1402
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1403
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v1, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1404
    .local v1, "exception":Ljava/lang/Throwable;
    if-eqz v1, :cond_0

    .line 1405
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 1406
    if-nez v3, :cond_1

    .line 1407
    const-string v3, ""

    .line 1412
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    .end local v1    # "exception":Ljava/lang/Throwable;
    :cond_1
    return-object v3
.end method

.method private checkVMChangeSuccess()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1419
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 1420
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    iget-object v1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 1421
    .local v0, "msg":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1422
    const-string v0, ""

    .line 1426
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createDualMicNoiseSuppressionSettings()V
    .locals 2

    .prologue
    .line 2000
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2001
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2002
    const-string v1, "dual_mic_noise_suppression_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    .line 2003
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isDualMicNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2004
    return-void
.end method

.method private createEqualizerSettings()V
    .locals 3

    .prologue
    .line 2007
    const-string v0, "voice_personal_eq"

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2009
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createEqualizerSettings: Got audio equalizer value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2012
    :cond_0
    if-nez v0, :cond_1

    .line 2033
    :goto_0
    return-void

    .line 2014
    :cond_1
    const v0, 0x7f050018

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2015
    const-string v0, "button_equalizer_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2016
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$6;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallFeaturesSetting$6;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/ListPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method private createSipCallSettings()V
    .locals 3

    .prologue
    .line 2118
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isVoipSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2119
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipManager:Landroid/net/sip/SipManager;

    .line 2120
    new-instance v0, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v0, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 2121
    const v0, 0x7f050010

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2122
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getSipCallOptionPreference()Landroid/preference/ListPreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    .line 2123
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 2124
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getSipCallOption()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2127
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2129
    :cond_0
    return-void
.end method

.method private createSlowTalkSettings()V
    .locals 3

    .prologue
    .line 2058
    const-string v0, "st_enable"

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2060
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2061
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSlowTalkSettings: Got Audio slow talk value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2063
    :cond_0
    if-nez v0, :cond_1

    .line 2075
    :goto_0
    return-void

    .line 2065
    :cond_1
    const v0, 0x7f05001a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2066
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "slow_talk_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2068
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$8;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallFeaturesSetting$8;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private createSpeakerVoiceEnhancementSettings()V
    .locals 3

    .prologue
    .line 2036
    const-string v0, "wide_voice_enable"

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2038
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    .line 2039
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createSpeakerVoiceEnhancementSettings: Got Audio speaker voice enhancement value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2042
    :cond_0
    if-nez v0, :cond_1

    .line 2055
    :goto_0
    return-void

    .line 2044
    :cond_1
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 2045
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "speaker_voice_enhancement_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2047
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$7;

    invoke-direct {v1, p0, v0}, Lcom/android/phone/CallFeaturesSetting$7;-><init>(Lcom/android/phone/CallFeaturesSetting;Landroid/preference/CheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0
.end method

.method private deleteSettingsForVoicemailProvider(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2657
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting settings for"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2658
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v0, :cond_1

    .line 2665
    :goto_0
    return-void

    .line 2661
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#VMNumber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#FWDSettings"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private dismissDialogSafely(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1052
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    :goto_0
    return-void

    .line 1053
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentVoicemailProviderKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2668
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 2669
    .local v0, "key":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "key":Ljava/lang/String;
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getIncreasingRingtone(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 2251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "increasing_ringtone"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private getSipCallOptionPreference()Landroid/preference/ListPreference;
    .locals 4

    .prologue
    .line 2134
    const-string v0, "sip_call_options_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2136
    const-string v1, "sip_call_options_wifi_only_key"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 2138
    const-string v2, "sip_settings_category_key"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 2140
    invoke-static {p0}, Landroid/net/sip/SipManager;->isSipWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2141
    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2145
    :goto_0
    return-object v1

    .line 2144
    :cond_0
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v1, v0

    .line 2145
    goto :goto_0
.end method

.method public static getVibrateWhenRinging(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2239
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 2240
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 2243
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "vibrate_when_ringing"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static goUpToTopLevelSetting(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 2731
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2732
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2733
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2734
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2735
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2736
    return-void
.end method

.method private handleForwardingSettingsReadResult(Landroid/os/AsyncResult;I)V
    .locals 7

    .prologue
    const/16 v6, 0x25a

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1119
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleForwardingSettingsReadResult: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_14

    .line 1122
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FwdRead: ar.exception="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1126
    :goto_0
    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    .line 1127
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v2, "CallFeaturesSetting"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FwdRead: userObj="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_2
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 1133
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    if-nez v2, :cond_5

    .line 1134
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignoring fwd reading result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    :cond_4
    :goto_1
    return-void

    .line 1139
    :cond_5
    if-eqz v0, :cond_7

    .line 1140
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_6

    const-string v0, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error discovered for fwd read : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_6
    iput-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1142
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1143
    const/16 v0, 0x192

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    goto :goto_1

    .line 1148
    :cond_7
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v0, [Lcom/android/internal/telephony/CallForwardInfo;

    move v2, v3

    .line 1150
    :goto_2
    array-length v5, v0

    if-ge v2, v5, :cond_13

    .line 1151
    aget-object v5, v0, v2

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_c

    .line 1152
    aget-object v0, v0, v2

    .line 1156
    :goto_3
    if-nez v0, :cond_d

    .line 1160
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_8

    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating default info for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1162
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1163
    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v1, v1, p2

    iput v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 1164
    iput v4, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 1173
    :cond_9
    :goto_4
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v1, p2

    move v0, v3

    .line 1177
    :goto_5
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_12

    .line 1178
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v1, v1, v0

    if-nez v1, :cond_10

    move v0, v3

    .line 1183
    :goto_6
    if-eqz v0, :cond_11

    .line 1184
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_a

    const-string v0, "CallFeaturesSetting"

    const-string v1, "Done receiving fwd info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1185
    :cond_a
    invoke-direct {p0, v6}, Lcom/android/phone/CallFeaturesSetting;->dismissDialogSafely(I)V

    .line 1186
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    if-eqz v0, :cond_b

    .line 1187
    const-string v0, ""

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1190
    iput-boolean v3, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1192
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto/16 :goto_1

    .line 1150
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1167
    :cond_d
    iget-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_f

    .line 1168
    :cond_e
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1171
    :cond_f
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_9

    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got  "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1177
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1194
    :cond_11
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_4

    const-string v0, "CallFeaturesSetting"

    const-string v1, "Not done receiving fwd info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_12
    move v0, v4

    goto :goto_6

    :cond_13
    move-object v0, v1

    goto/16 :goto_3

    :cond_14
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private handleSetVMOrFwdMessage()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1430
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1431
    const-string v0, "handleSetVMMessage: set VM request complete"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1435
    :cond_0
    const-string v0, ""

    .line 1436
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 1437
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkFwdChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1438
    if-eqz v0, :cond_5

    move v3, v2

    move v2, v1

    .line 1443
    :goto_0
    if-eqz v2, :cond_4

    .line 1444
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->checkVMChangeSuccess()Ljava/lang/String;

    move-result-object v0

    .line 1445
    if-eqz v0, :cond_4

    .line 1449
    :goto_1
    if-eqz v1, :cond_2

    .line 1450
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "change VM success!"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1451
    :cond_1
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMAndFwdSetSuccess(I)V

    .line 1461
    :goto_2
    return-void

    .line 1453
    :cond_2
    if-eqz v3, :cond_3

    .line 1454
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change fowarding setting. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const/16 v0, 0x191

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_2

    .line 1457
    :cond_3
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to change voicemail. Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->handleVMOrFwdSetError(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0
.end method

.method private handleSipCallOptionsChange(Ljava/lang/Object;)V
    .locals 3
    .param p1, "objValue"    # Ljava/lang/Object;

    .prologue
    .line 2373
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2374
    .local v0, "option":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSipSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1, v0}, Lcom/android/phone/sip/SipSharedPreferences;->setSipCallOption(Ljava/lang/String;)V

    .line 2375
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2377
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2378
    return-void
.end method

.method private handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2344
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2345
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2348
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTTYChange: requesting set TTY mode enable (TTY) to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2351
    :cond_0
    if-eq v0, v2, :cond_1

    .line 2352
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 2364
    :goto_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2365
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2366
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2367
    const-string v2, "ttyPreferredMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2368
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2370
    :cond_1
    return-void

    .line 2357
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_tty_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 2352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleVMAndFwdSetSuccess(I)V
    .locals 2

    .prologue
    .line 1487
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVMAndFwdSetSuccess(). current voicemail provider key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1491
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 1492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1493
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1494
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1495
    return-void
.end method

.method private handleVMBtnClickRequest()V
    .locals 4

    .prologue
    .line 1014
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v2}, Lcom/android/phone/EditPhoneNumberPreference;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1018
    return-void
.end method

.method private handleVMOrFwdSetError(I)V
    .locals 2
    .param p1, "msgId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1471
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    if-eqz v0, :cond_0

    .line 1472
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1473
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1474
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1480
    :goto_0
    return-void

    .line 1477
    :cond_0
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 1478
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1479
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    goto :goto_0
.end method

.method private infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;
    .locals 6
    .param p1, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "reason"    # I

    .prologue
    .line 1199
    const/4 v4, 0x0

    .line 1200
    .local v4, "result":Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz p1, :cond_0

    .line 1201
    move-object v0, p1

    .local v0, "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 1202
    .local v2, "info":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, p2, :cond_1

    .line 1203
    move-object v4, v2

    .line 1208
    .end local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v1    # "i$":I
    .end local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v3    # "len$":I
    :cond_0
    return-object v4

    .line 1201
    .restart local v0    # "arr$":[Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v1    # "i$":I
    .restart local v2    # "info":Lcom/android/internal/telephony/CallForwardInfo;
    .restart local v3    # "len$":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initEqualizerValue()V
    .locals 2

    .prologue
    .line 2078
    const-string v0, "button_equalizer_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2079
    if-nez v0, :cond_0

    .line 2084
    :goto_0
    return-void

    .line 2080
    :cond_0
    const-string v1, "voice_personal_eq"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2082
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2083
    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateEqualizerSummary(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSlowTalkValue()V
    .locals 2

    .prologue
    .line 2100
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "slow_talk_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2102
    if-nez v0, :cond_0

    .line 2107
    :goto_0
    return-void

    .line 2104
    :cond_0
    const-string v1, "st_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2106
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.method private initSpeakerVoiceEnhancementValue()V
    .locals 2

    .prologue
    .line 2087
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "speaker_voice_enhancement_listpreference_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 2089
    if-nez v0, :cond_0

    .line 2097
    :goto_0
    return-void

    .line 2091
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2094
    const-string v1, "wide_voice_enable"

    invoke-static {v1}, Lcom/android/phone/SomcPhoneUtils;->getAudioParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2096
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 2091
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initVoiceMailProviders()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2453
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initVoiceMailProviders()"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2454
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "vm_numbers"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    .line 2459
    const-string v0, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2460
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ACTION_ADD_VOICEMAIL"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2461
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2462
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2464
    :goto_0
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    .line 2465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found ACTION_ADD_VOICEMAIL. providerToIgnore="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2467
    :cond_2
    if-eqz v0, :cond_3

    .line 2469
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->deleteSettingsForVoicemailProvider(Ljava/lang/String;)V

    :cond_3
    move-object v2, v0

    .line 2473
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2476
    const v0, 0x7f0b0284

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2477
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    const-string v4, ""

    new-instance v6, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v6, p0, v5, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2480
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2481
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2482
    const-string v1, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2483
    invoke-virtual {v6, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 2484
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move v4, v0

    .line 2488
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 2489
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 2490
    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 2491
    invoke-direct {p0, v8}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v9

    .line 2492
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2493
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring key: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2494
    :cond_4
    add-int/lit8 v4, v4, -0x1

    .line 2488
    :goto_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 2497
    :cond_5
    sget-boolean v10, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loading "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2498
    :cond_6
    invoke-virtual {v0, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2499
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2500
    const-string v11, "com.android.phone.CallFeaturesSetting.CONFIGURE_VOICEMAIL"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2501
    iget-object v11, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2503
    sget-boolean v8, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v8, :cond_7

    .line 2504
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Store loaded VoiceMailProvider. key: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " -> name: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, ", intent: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2507
    :cond_7
    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    new-instance v11, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    invoke-direct {v11, p0, v0, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 2515
    :cond_8
    new-array v2, v4, [Ljava/lang/String;

    .line 2516
    new-array v4, v4, [Ljava/lang/String;

    .line 2517
    aput-object v5, v2, v3

    .line 2518
    const-string v0, ""

    aput-object v0, v4, v3

    .line 2519
    const/4 v0, 0x1

    move v1, v0

    .line 2520
    :goto_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 2521
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2522
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v1

    .line 2520
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_4

    .line 2525
    :cond_9
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    aput-object v0, v2, v1

    .line 2526
    aput-object v5, v4, v1

    .line 2527
    add-int/lit8 v0, v1, 0x1

    goto :goto_5

    .line 2531
    :cond_a
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 2532
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, v4}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 2537
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 2538
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_b

    .line 2539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set up the first mPreviousVMProviderKey: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2543
    :cond_b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 2544
    return-void

    :cond_c
    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2338
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 2
    .param p1, "oldInfo"    # Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "newInfo"    # Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 1213
    const/4 v0, 0x1

    .line 1214
    .local v0, "result":Z
    iget v1, p2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1217
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v1, :cond_0

    .line 1218
    const/4 v0, 0x0

    .line 1221
    :cond_0
    return v0
.end method

.method private launchAmSettings()V
    .locals 3

    .prologue
    .line 686
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "launchAmSettings"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 687
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 688
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.am.SomcAmSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 689
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 690
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 691
    return-void
.end method

.method private loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2618
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "#VMNumber"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2620
    if-nez v3, :cond_0

    .line 2621
    const-string v1, "CallFeaturesSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoiceMailProvider settings for the key \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was not found. Returning null."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    :goto_0
    return-object v0

    .line 2626
    :cond_0
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#FWDSettings"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2628
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Length"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2629
    if-lez v2, :cond_2

    .line 2630
    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 2631
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 2632
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "#Setting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2633
    new-instance v6, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v6}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    aput-object v6, v2, v0

    .line 2634
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Status"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 2636
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Reason"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 2639
    aget-object v6, v2, v0

    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 2640
    aget-object v6, v2, v0

    const/16 v7, 0x91

    iput v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 2641
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "#Number"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 2643
    aget-object v6, v2, v0

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "#Time"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v8, 0x14

    invoke-interface {v7, v5, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 2631
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    move-object v0, v2

    .line 2648
    :cond_2
    new-instance v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    invoke-direct {v1, p0, v3, v0}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 2649
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded settings for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    .line 2650
    goto/16 :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2396
    const-string v0, "CallFeaturesSetting"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2397
    return-void
.end method

.method private lookupRingtoneName()V
    .locals 2

    .prologue
    .line 2334
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2335
    return-void
.end method

.method private makeKeyForActivity(Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 1
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 2547
    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method private maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 2577
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-nez v1, :cond_1

    .line 2607
    :cond_0
    :goto_0
    return-void

    .line 2580
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v1

    .line 2581
    invoke-virtual {p2, v1}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2582
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeSaveSettingsForVoicemailProvider: Not saving setting for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " since they have not changed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2588
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saving settings for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2589
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPerProviderSavedVMNumbers:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#VMNumber"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2591
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#FWDSettings"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2592
    iget-object v3, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 2593
    sget-object v4, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v3, v4, :cond_4

    .line 2594
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    array-length v5, v3

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2595
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 2596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#Setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2597
    aget-object v5, v3, v0

    .line 2598
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2599
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Reason"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2600
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "#Number"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2601
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "#Time"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2595
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 2604
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#Length"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2606
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0
.end method

.method public static migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z
    .locals 3

    .prologue
    .line 2217
    const-string v0, "button_voicemail_notification_vibrate_key"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2218
    const-string v0, "button_voicemail_notification_vibrate_when_key"

    const-string v1, "never"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2223
    const-string v1, "always"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2224
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2225
    const-string v2, "button_voicemail_notification_vibrate_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2226
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2227
    const/4 v0, 0x1

    .line 2229
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onRevertDone()V
    .locals 2

    .prologue
    .line 887
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flipping provider key back to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 890
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 891
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    if-eqz v0, :cond_1

    .line 892
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 893
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 895
    :cond_1
    return-void
.end method

.method private queryVoLTEState()V
    .locals 4

    .prologue
    .line 2256
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "queryVoLTEState "

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2257
    :cond_0
    const/4 v0, -0x1

    .line 2259
    const v1, 0x9001e

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/phone/CallFeaturesSetting;->sendOemRilRequestRaw(IBLandroid/os/Message;)V

    .line 2261
    return-void
.end method

.method private resetForwardingChangeState()V
    .locals 1

    .prologue
    .line 1225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1226
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    .line 1227
    return-void
.end method

.method private saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1062
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveVoiceMailAndForwardingNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1063
    :cond_0
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1065
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1066
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 1069
    :cond_1
    iget-object v0, p2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1070
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newFwdNumber "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " settings"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1075
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 1076
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "ignoring forwarding setting since this is CDMA phone"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1077
    :cond_3
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 1081
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-ne v0, v2, :cond_6

    .line 1082
    const/16 v0, 0x2bc

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showVMDialog(I)V

    .line 1104
    :goto_1
    return-void

    :cond_5
    move v0, v1

    .line 1070
    goto :goto_0

    .line 1086
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->maybeSaveSettingsForVoicemailProvider(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    .line 1087
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    .line 1088
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    .line 1089
    iput v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMOrFwdSetError:I

    .line 1090
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1091
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mReadingSettingsForDefaultProvider:Z

    .line 1093
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "Reading current forwarding settings"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1094
    :cond_7
    sget-object v0, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v0, v0

    new-array v0, v0, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    move v0, v1

    .line 1095
    :goto_2
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 1096
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 1097
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v3, v3, v0

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mGetOptionComplete:Landroid/os/Handler;

    const/16 v5, 0x1f6

    invoke-virtual {v4, v5, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1095
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1100
    :cond_8
    const/16 v0, 0x25a

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_1

    .line 1102
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1
.end method

.method private saveVoiceMailAndForwardingNumberStage2()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 1232
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 1233
    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailChangeResult:Landroid/os/AsyncResult;

    .line 1234
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    sget-object v1, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eq v0, v1, :cond_4

    .line 1235
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    move v6, v7

    .line 1236
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v0, v0

    if-ge v6, v0, :cond_3

    .line 1237
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewFwdSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aget-object v5, v0, v6

    .line 1239
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingReadResults:[Lcom/android/internal/telephony/CallForwardInfo;

    iget v1, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-direct {p0, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->infoForReason([Lcom/android/internal/telephony/CallForwardInfo;I)Lcom/android/internal/telephony/CallForwardInfo;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/android/phone/CallFeaturesSetting;->isUpdateRequired(Lcom/android/internal/telephony/CallForwardInfo;Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v0

    .line 1242
    if-eqz v0, :cond_1

    .line 1243
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1246
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v5, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x3

    :goto_1
    iget v2, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v5, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v5, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v9, 0x1f5

    iget v5, v5, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-virtual {v8, v9, v5, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1236
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_2
    move v1, v7

    .line 1246
    goto :goto_1

    .line 1257
    :cond_3
    const/16 v0, 0x259

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 1262
    :goto_2
    return-void

    .line 1259
    :cond_4
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "Not touching fwd #"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1260
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->setVMNumberWithCarrier()V

    goto :goto_2
.end method

.method private sendOemRilRequestRaw(IBLandroid/os/Message;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "payload"    # B
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 2314
    iget v2, p0, Lcom/android/phone/CallFeaturesSetting;->mHeaderSize:I

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [B

    .line 2316
    .local v1, "request":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2317
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2320
    const-string v2, "QOEMHOOK"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 2322
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2324
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 2325
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2327
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2, v1, p3}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 2328
    return-void
.end method

.method private setVMNumberWithCarrier()V
    .locals 5

    .prologue
    .line 1265
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save voicemail #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mSetOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1270
    return-void
.end method

.method private setVolteState(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2264
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setVolteState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2267
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    .line 2275
    :goto_0
    const v3, 0x9001d

    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    invoke-virtual {v4, v1, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-direct {p0, v3, v0, v1}, Lcom/android/phone/CallFeaturesSetting;->sendOemRilRequestRaw(IBLandroid/os/Message;)V

    .line 2277
    return-void

    :cond_1
    move v0, v2

    .line 2272
    goto :goto_0
.end method

.method private showDialogIfForeground(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 1045
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    .line 1048
    :cond_0
    return-void
.end method

.method private showVMDialog(I)V
    .locals 1
    .param p1, "msgStatus"    # I

    .prologue
    .line 1685
    sparse-switch p1, :sswitch_data_0

    .line 1707
    :goto_0
    return-void

    .line 1689
    :sswitch_0
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1692
    :sswitch_1
    const/16 v0, 0x1f5

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1695
    :sswitch_2
    const/16 v0, 0x1f6

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1698
    :sswitch_3
    const/16 v0, 0x190

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1701
    :sswitch_4
    const/16 v0, 0x258

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto :goto_0

    .line 1685
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x191 -> :sswitch_1
        0x192 -> :sswitch_2
        0x258 -> :sswitch_4
        0x2bc -> :sswitch_3
    .end sparse-switch
.end method

.method private simulatePreferenceClick(Landroid/preference/Preference;)V
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 2559
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 2560
    .local v6, "adapter":Landroid/widget/ListAdapter;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    invoke-interface {v6}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 2561
    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 2562
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/preference/PreferenceScreen;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 2567
    :cond_0
    return-void

    .line 2560
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private switchToPreviousVoicemailProvider()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    .line 816
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchToPreviousVoicemailProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 818
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_8

    .line 820
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Needs to rollback. mVMChangeCompletedSuccessfully="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFwdChangesRequireRollback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 826
    :cond_2
    const/16 v0, 0x25b

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    .line 827
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v9

    .line 829
    .local v9, "prevSettings":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v9, :cond_3

    .line 831
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VoiceMailProviderSettings for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" becomes null, which is unexpected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    .line 834
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMChangeCompletedSuccessfully: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mFwdChangesRequireRollback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMChangeCompletedSuccessfully:Z

    if-eqz v0, :cond_4

    if-eqz v9, :cond_4

    .line 840
    iget-object v0, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    .line 841
    const-string v0, "CallFeaturesSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VM change is already completed successfully.Have to revert VM back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " again."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mNewVMNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 848
    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mFwdChangesRequireRollback:Z

    if-eqz v0, :cond_a

    if-eqz v9, :cond_a

    .line 849
    const-string v0, "CallFeaturesSetting"

    const-string v1, "Requested to rollback Fwd changes."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    iget-object v8, v9, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 852
    .local v8, "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    if-eqz v8, :cond_a

    .line 853
    iget-object v11, p0, Lcom/android/phone/CallFeaturesSetting;->mForwardingChangeResults:Ljava/util/Map;

    .line 855
    .local v11, "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->resetForwardingChangeState()V

    .line 856
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v8

    if-ge v7, v0, :cond_a

    .line 857
    aget-object v6, v8, v7

    .line 858
    .local v6, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_5

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reverting fwd #: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallForwardInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 863
    :cond_5
    iget v0, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/AsyncResult;

    .line 864
    .local v10, "result":Landroid/os/AsyncResult;
    if-eqz v10, :cond_6

    iget-object v0, v10, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_6

    .line 865
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mExpectedChangeResultReasons:Ljava/util/Collection;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 866
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    iget v1, v6, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    const/4 v1, 0x3

    :goto_1
    iget v2, v6, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget-object v3, v6, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v4, v6, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mRevertOptionComplete:Landroid/os/Handler;

    const/16 v13, 0x1f5

    invoke-virtual {v5, v13, v7, v12}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 856
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_7
    move v1, v12

    .line 866
    goto :goto_1

    .line 880
    .end local v6    # "fi":Lcom/android/internal/telephony/CallForwardInfo;
    .end local v7    # "i":I
    .end local v8    # "prevFwdSettings":[Lcom/android/internal/telephony/CallForwardInfo;
    .end local v9    # "prevSettings":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    .end local v10    # "result":Landroid/os/AsyncResult;
    .end local v11    # "results":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/os/AsyncResult;>;"
    :cond_8
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "No need to revert"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 881
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->onRevertDone()V

    .line 884
    :cond_a
    return-void
.end method

.method private turnDualMicNoiseSuppressionOff()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 671
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "turnDualMicNoiseSuppressionOff"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 672
    :cond_0
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 674
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 681
    invoke-static {p0, v4}, Lcom/android/phone/SomcPhoneUtils;->setDualMicNoiseSuppression(Landroid/content/Context;Z)V

    .line 682
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 683
    return-void
.end method

.method private turnDualMicNoiseSuppressionOn()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 655
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "turnDualMicNoiseSuppressionOn"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 656
    :cond_0
    const/16 v0, 0x320

    iput v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 659
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00da

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 666
    invoke-static {p0, v4}, Lcom/android/phone/SomcPhoneUtils;->setDualMicNoiseSuppression(Landroid/content/Context;Z)V

    .line 667
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 668
    return-void
.end method

.method private updateEqualizerSummary(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 2110
    const-string v0, "button_equalizer_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    .line 2111
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 2112
    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 2113
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2114
    return-void
.end method

.method private updateNetworkRelatedSettings(Z)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 2695
    const-string v0, "sip_settings_category_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 2696
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 2697
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v5

    move v2, v1

    .line 2698
    :goto_0
    if-ge v2, v5, :cond_2

    .line 2699
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .line 2700
    if-eq v6, v3, :cond_0

    .line 2701
    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v6, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2698
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2701
    goto :goto_1

    .line 2704
    :cond_2
    return-void
.end method

.method private updatePreferredTtyModeSummary(I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2381
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 2382
    packed-switch p1, :pswitch_data_0

    .line 2390
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2391
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2393
    :goto_0
    return-void

    .line 2387
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 1945
    if-nez p2, :cond_0

    .line 1996
    :goto_0
    return-void

    .line 1948
    :cond_0
    if-ne p1, v8, :cond_2

    .line 1951
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    move v6, v7

    .line 1972
    :goto_1
    const v0, 0x1040441

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1974
    if-nez v1, :cond_5

    .line 1975
    const v0, 0x104043f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1991
    :goto_2
    if-eqz v6, :cond_1

    .line 1992
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0456

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v7

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1995
    :cond_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupComplete:Landroid/os/Handler;

    invoke-virtual {v2, p3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1953
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1956
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1957
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v6, v7

    .line 1959
    goto :goto_1

    .line 1961
    :cond_3
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1966
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    move v6, v8

    goto :goto_1

    .line 1968
    :cond_4
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move v6, v7

    goto :goto_1

    .line 1979
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "title"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1981
    if-eqz v1, :cond_7

    .line 1982
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1983
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1985
    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1987
    :catch_0
    move-exception v1

    move-object v9, v0

    :goto_4
    move-object v0, v9

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v0, v9

    goto :goto_3

    :cond_7
    move-object v0, v9

    goto :goto_2
.end method

.method private updateVMPreferenceWidgets(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2405
    .line 2406
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;

    .line 2412
    if-nez v0, :cond_1

    .line 2413
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 2414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" is null."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2416
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const v1, 0x7f0b0283

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2417
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2418
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2419
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2421
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2441
    :goto_0
    return-void

    .line 2423
    :cond_1
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_2

    .line 2424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVMPreferenceWidget: provider for the key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\".."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 2428
    :cond_2
    iget-object v1, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 2429
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2430
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0b03da

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 2432
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2433
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2435
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2437
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    iget-object v0, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 2439
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVoiceNumberField()V
    .locals 2

    .prologue
    .line 1501
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoiceNumberField(). mSubMenuVoicemailSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1504
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-nez v0, :cond_1

    .line 1516
    :goto_0
    return-void

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1509
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 1510
    const-string v0, ""

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    .line 1512
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/phone/EditPhoneNumberPreference;->setPhoneNumber(Ljava/lang/String;)Lcom/android/phone/EditPhoneNumberPreference;

    .line 1513
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mOldVmNumber:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/phone/SomcPhoneUtils;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1515
    :goto_1
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1513
    :cond_3
    const v0, 0x7f0b03d8

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 899
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    .line 900
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: requestCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 906
    :cond_0
    const/4 v1, 0x2

    move/from16 v0, p1

    if-ne v0, v1, :cond_14

    .line 907
    const/4 v8, 0x0

    .line 910
    .local v8, "failure":Z
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVMProviderSettingsForced: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 911
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 912
    .local v12, "isVMProviderSettingsForced":Z
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 914
    const/4 v15, 0x0

    .line 915
    .local v15, "vmNum":Ljava/lang/String;
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_6

    .line 916
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "onActivityResult: vm provider cfg result not OK."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 917
    :cond_2
    const/4 v8, 0x1

    .line 953
    :cond_3
    :goto_0
    if-eqz v8, :cond_11

    .line 954
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "Failure in return from voicemail provider"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 955
    :cond_4
    if-eqz v12, :cond_10

    .line 956
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    .line 1005
    .end local v8    # "failure":Z
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v15    # "vmNum":Ljava/lang/String;
    :cond_5
    :goto_1
    return-void

    .line 919
    .restart local v8    # "failure":Z
    .restart local v12    # "isVMProviderSettingsForced":Z
    .restart local v15    # "vmNum":Ljava/lang/String;
    :cond_6
    if-nez p3, :cond_8

    .line 920
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_7

    .line 921
    const-string v1, "onActivityResult: vm provider cfg result has no data"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 923
    :cond_7
    const/4 v8, 0x1

    goto :goto_0

    .line 925
    :cond_8
    const-string v1, "com.android.phone.Signout"

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 926
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_9

    const-string v1, "Provider requested signout"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 927
    :cond_9
    if-eqz v12, :cond_b

    .line 928
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_a

    .line 929
    const-string v1, "Going back to previous provider on signout"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 931
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_1

    .line 933
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v14

    .line 934
    .local v14, "victim":Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_c

    .line 935
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Relaunching activity and ignoring "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 937
    :cond_c
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v11, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v11, "i":Landroid/content/Intent;
    const-string v1, "com.android.phone.ProviderToIgnore"

    invoke-virtual {v11, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 939
    const/high16 v1, 0x4000000

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 940
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 944
    .end local v11    # "i":Landroid/content/Intent;
    .end local v14    # "victim":Ljava/lang/String;
    :cond_d
    const-string v1, "com.android.phone.VoicemailNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 945
    if-eqz v15, :cond_e

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 946
    :cond_e
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_f

    .line 947
    const-string v1, "onActivityResult: vm provider cfg result has no vmnum"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 949
    :cond_f
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 958
    :cond_10
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_5

    .line 959
    const-string v1, "Not switching back the provider since this is not forced config"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 964
    :cond_11
    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 965
    const-string v1, "com.android.phone.ForwardingNumber"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 969
    .local v9, "fwdNum":Ljava/lang/String;
    const-string v1, "com.android.phone.ForwardingNumberTime"

    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 971
    .local v10, "fwdNumTime":I
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult: vm provider cfg result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v9, :cond_13

    const-string v1, "has"

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " forwarding number"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 973
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/CallFeaturesSetting;->getCurrentVoicemailProviderKey()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v15, v9, v10}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;-><init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_1

    .line 971
    :cond_13
    const-string v1, " does not have"

    goto :goto_2

    .line 978
    .end local v8    # "failure":Z
    .end local v9    # "fwdNum":Ljava/lang/String;
    .end local v10    # "fwdNumTime":I
    .end local v12    # "isVMProviderSettingsForced":Z
    .end local v15    # "vmNum":Ljava/lang/String;
    :cond_14
    const/4 v1, 0x1

    move/from16 v0, p1

    if-ne v0, v1, :cond_1b

    .line 979
    const/4 v1, -0x1

    move/from16 v0, p2

    if-eq v0, v1, :cond_15

    .line 980
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_5

    const-string v1, "onActivityResult: contact picker result not OK."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 983
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 985
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 988
    .local v13, "numberString":Ljava/lang/String;
    if-eqz v7, :cond_16

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_18

    .line 989
    :cond_16
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_17

    .line 990
    const-string v1, "onActivityResult: bad contact data, no results found."

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 996
    :cond_17
    if-eqz v7, :cond_5

    .line 997
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 994
    :cond_18
    :try_start_1
    const-string v1, "data1"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 996
    if-eqz v7, :cond_19

    .line 997
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1000
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v1, v13}, Lcom/android/phone/EditPhoneNumberPreference;->onPickActivityResult(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 996
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_1a

    .line 997
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 996
    :cond_1a
    throw v1

    .line 1004
    .end local v7    # "cursor":Landroid/database/Cursor;
    .end local v13    # "numberString":Ljava/lang/String;
    :cond_1b
    invoke-super/range {p0 .. p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/16 v1, 0x1f6

    .line 1638
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1639
    packed-switch p2, :pswitch_data_0

    .line 1678
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1679
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1681
    :cond_1
    :goto_1
    return-void

    .line 1641
    :pswitch_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Neutral button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "Negative button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1645
    :cond_2
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_0

    .line 1648
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->switchToPreviousVoicemailProvider()V

    goto :goto_0

    .line 1652
    :pswitch_2
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "Positive button"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1653
    :cond_3
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    if-ne v0, v1, :cond_4

    .line 1656
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumberStage2()V

    goto :goto_1

    .line 1657
    :cond_4
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    const/16 v1, 0x320

    if-eq v0, v1, :cond_1

    .line 1659
    iget v0, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_6

    .line 1660
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1661
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1663
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1664
    const-string v1, "am_launch_dialog_disabled_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1665
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1667
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->launchAmSettings()V

    goto :goto_1

    .line 1669
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1639
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 1715
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1716
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(). Intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1718
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08001f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1721
    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->doesDualMicNoiseSuppressionExist(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mShowDualMicNoiseSuppression:Z

    .line 1725
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1727
    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 1729
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    .line 1732
    invoke-virtual {p0}, Landroid/preference/PreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 1733
    const-string v0, "button_voicemail_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/phone/EditPhoneNumberPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    .line 1734
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eqz v0, :cond_2

    .line 1735
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0, v1, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setParentActivity(Landroid/app/Activity;ILcom/android/phone/EditPhoneNumberPreference$GetDefaultNumberListener;)V

    .line 1736
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    invoke-virtual {v0, p0}, Lcom/android/phone/EditPhoneNumberPreference;->setDialogOnClosedListener(Lcom/android/phone/EditPhoneNumberPreference$OnDialogClosedListener;)V

    .line 1737
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    const v4, 0x7f0b036c

    invoke-virtual {v0, v4}, Landroid/preference/DialogPreference;->setDialogTitle(I)V

    .line 1740
    :cond_2
    const-string v0, "button_ringtone_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtonePreference:Landroid/preference/Preference;

    .line 1741
    const-string v0, "button_vibrate_on_ring"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    .line 1742
    const-string v0, "button_increasing_ringtone"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    .line 1743
    const-string v0, "button_play_dtmf_tone"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 1744
    const-string v0, "button_dtmf_settings"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    .line 1745
    const-string v0, "button_auto_retry_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    .line 1746
    const-string v0, "button_hac_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    .line 1747
    const-string v0, "button_tty_mode_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    .line 1749
    const-string v0, "button_voicemail_provider_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    .line 1751
    const-string v0, "button_enhanced_call_features_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 1753
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1754
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.sonymobile.imscp.settings"

    const-string v7, "com.sonymobile.imscp.settings.SettingsActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1755
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1756
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1759
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_4

    .line 1760
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1761
    const-string v0, "button_voicemail_setting_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    .line 1762
    const-string v0, "button_voicemail_notification_ringtone_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;

    .line 1764
    const-string v0, "button_voicemail_notification_vibrate_key"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    .line 1766
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initVoiceMailProviders()V

    .line 1769
    :cond_4
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080034

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1770
    const-string v0, "button_answering_machine"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAnsweringMachineSettings:Landroid/preference/PreferenceScreen;

    .line 1777
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 1778
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 1779
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1780
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1787
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 1788
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "increasing_ringtone"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_18

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1792
    :cond_6
    const-string v0, "button_volte"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    .line 1793
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    .line 1794
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080039

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1795
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    invoke-direct {v0, p0, v8}, Lcom/android/phone/CallFeaturesSetting$VolteHandler;-><init>(Lcom/android/phone/CallFeaturesSetting;Lcom/android/phone/CallFeaturesSetting$1;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolteHandler:Lcom/android/phone/CallFeaturesSetting$VolteHandler;

    .line 1796
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1797
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->queryVoLTEState()V

    .line 1804
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 1805
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "dtmf_tone"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1809
    :cond_8
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_9

    .line 1810
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080006

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1811
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1818
    :cond_9
    :goto_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    .line 1819
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080007

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1820
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1827
    :cond_a
    :goto_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    .line 1828
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080005

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1830
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1837
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_c

    .line 1838
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080021

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1839
    if-eqz v0, :cond_1e

    .line 1840
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1847
    :cond_c
    :goto_8
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f080004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1848
    const-string v0, "button_cdma_more_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1849
    if-eqz v0, :cond_d

    .line 1850
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1851
    :cond_d
    const-string v0, "button_gsm_more_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_e

    .line 1853
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1855
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1856
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1f

    .line 1857
    const-string v0, "button_fdn_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1858
    if-eqz v0, :cond_f

    .line 1859
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1860
    :cond_f
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f08000e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1861
    const v0, 0x7f050004

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 1876
    :cond_10
    :goto_9
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    .line 1877
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mContactListIntent:Landroid/content/Intent;

    const-string v3, "vnd.android.cursor.item/phone"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1884
    if-nez p1, :cond_12

    .line 1885
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-eqz v0, :cond_12

    .line 1887
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_11

    .line 1888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_ADD_VOICEMAIL Intent is thrown. current VM data size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 1891
    :cond_11
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProvidersData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-le v0, v1, :cond_21

    .line 1892
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    .line 1899
    :cond_12
    :goto_a
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 1900
    iput-boolean v2, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 1902
    iget-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mShowDualMicNoiseSuppression:Z

    if-eqz v0, :cond_13

    .line 1903
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createDualMicNoiseSuppressionSettings()V

    .line 1906
    :cond_13
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1907
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createEqualizerSettings()V

    .line 1908
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSpeakerVoiceEnhancementSettings()V

    .line 1909
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSlowTalkSettings()V

    .line 1912
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->createSipCallSettings()V

    .line 1914
    new-instance v0, Lcom/android/phone/CallFeaturesSetting$5;

    invoke-direct {v0, p0}, Lcom/android/phone/CallFeaturesSetting$5;-><init>(Lcom/android/phone/CallFeaturesSetting;)V

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 1929
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1930
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1932
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1933
    if-eqz v0, :cond_15

    .line 1935
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1937
    :cond_15
    return-void

    .line 1773
    :cond_16
    const-string v0, "button_answering_machine"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1774
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    .line 1782
    :cond_17
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1783
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_1

    :cond_18
    move v0, v2

    .line 1788
    goto/16 :goto_2

    .line 1799
    :cond_19
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1800
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_3

    :cond_1a
    move v0, v2

    .line 1805
    goto/16 :goto_4

    .line 1813
    :cond_1b
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1814
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    goto/16 :goto_5

    .line 1822
    :cond_1c
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1823
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_6

    .line 1832
    :cond_1d
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1833
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    goto/16 :goto_7

    .line 1842
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1843
    iput-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    goto/16 :goto_8

    .line 1863
    :cond_1f
    if-ne v0, v1, :cond_20

    .line 1864
    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->addPreferencesFromResource(I)V

    .line 1865
    const-string v0, "button_cb_expand_key"

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1866
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080026

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_10

    .line 1868
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_9

    .line 1871
    :cond_20
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

    .line 1894
    :cond_21
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {p0, v0, v3}, Lcom/android/phone/CallFeaturesSetting;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 1895
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    const-string v3, ""

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    .prologue
    const v0, 0x7f0b0249

    const/16 v5, 0x25b

    const/16 v2, 0x259

    const/4 v4, 0x0

    const v3, 0x7f0b0279

    .line 1536
    const/16 v1, 0x1f4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x190

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f5

    if-eq p1, v1, :cond_0

    const/16 v1, 0x1f6

    if-eq p1, v1, :cond_0

    const/16 v1, 0x258

    if-ne p1, v1, :cond_1

    .line 1540
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1543
    const v1, 0x7f0b0271

    .line 1544
    sparse-switch p1, :sswitch_data_0

    .line 1575
    const v0, 0x7f0b0276

    .line 1578
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1582
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1583
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1584
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1585
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1586
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1589
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 1630
    :goto_1
    return-object v0

    .line 1546
    :sswitch_0
    const v1, 0x7f0b027e

    .line 1549
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1554
    :sswitch_1
    const v1, 0x7f0b0282

    .line 1557
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1560
    :sswitch_2
    const v0, 0x7f0b027f

    .line 1562
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1563
    goto :goto_0

    .line 1565
    :sswitch_3
    const v0, 0x7f0b0280

    .line 1567
    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1568
    goto :goto_0

    .line 1570
    :sswitch_4
    const v0, 0x7f0b0281

    .line 1571
    const v3, 0x7f0b03d3

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1572
    const v3, 0x7f0b03d4

    invoke-virtual {v2, v3, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move v6, v1

    move v1, v0

    move v0, v6

    .line 1573
    goto :goto_0

    .line 1592
    :cond_1
    if-eq p1, v2, :cond_2

    const/16 v0, 0x25a

    if-eq p1, v0, :cond_2

    if-ne p1, v5, :cond_5

    .line 1594
    :cond_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 1595
    const v0, 0x7f0b0270

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1596
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1597
    invoke-virtual {v1, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1598
    if-ne p1, v2, :cond_3

    const v0, 0x7f0b0273

    :goto_2
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 1602
    goto :goto_1

    .line 1598
    :cond_3
    if-ne p1, v5, :cond_4

    const v0, 0x7f0b0274

    goto :goto_2

    :cond_4
    const v0, 0x7f0b0272

    goto :goto_2

    .line 1603
    :cond_5
    const/16 v0, 0x384

    if-ne p1, v0, :cond_7

    .line 1605
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/am/SomcAmManager;->getSomcAmManagerInstance(Landroid/content/Context;)Lcom/android/phone/am/SomcAmManager;

    move-result-object v0

    .line 1607
    invoke-virtual {v0}, Lcom/android/phone/am/SomcAmManager;->hasGreeting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1608
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1614
    :goto_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1615
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1616
    const v0, 0x7f0b009f

    invoke-virtual {v1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1617
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 1618
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x1090028

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1620
    const v0, 0x1020285

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    .line 1622
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    const v3, 0x7f0b0090

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1623
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAmAlertCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1624
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    move-object v0, v1

    .line 1626
    goto/16 :goto_1

    .line 1611
    :cond_6
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 1630
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 1544
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_3
        0x1f6 -> :sswitch_4
        0x258 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 2708
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mAirplaneModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2709
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 2710
    return-void
.end method

.method public onDialogClosed(Lcom/android/phone/EditPhoneNumberPreference;I)V
    .locals 2
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;
    .param p2, "buttonClicked"    # I

    .prologue
    .line 763
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick: request preference click on dialog close: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 765
    :cond_0
    const/4 v0, -0x2

    if-ne p2, v0, :cond_2

    .line 772
    :cond_1
    :goto_0
    return-void

    .line 769
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v0, :cond_1

    .line 770
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->handleVMBtnClickRequest()V

    goto :goto_0
.end method

.method public onGetDefaultNumber(Lcom/android/phone/EditPhoneNumberPreference;)Ljava/lang/String;
    .locals 3
    .param p1, "preference"    # Lcom/android/phone/EditPhoneNumberPreference;

    .prologue
    const/4 v1, 0x0

    .line 781
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-ne p1, v2, :cond_2

    .line 784
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "updating default for voicemail dialog"

    invoke-static {v2}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 785
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->updateVoiceNumberField()V

    .line 798
    :cond_1
    :goto_0
    return-object v1

    .line 789
    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "vmDisplay":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 797
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "updating default for call forwarding dialogs"

    invoke-static {v1}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 798
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0b024a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 2714
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2715
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2716
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2717
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2718
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2719
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2720
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2721
    const/4 v0, 0x1

    .line 2723
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 540
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 542
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 703
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v7, :cond_0

    .line 704
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", value: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 707
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_3

    .line 708
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 709
    .local v0, "doVibrate":Z
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "vibrate_when_ringing"

    if-eqz v0, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 758
    .end local v0    # "doVibrate":Z
    :cond_2
    :goto_0
    return v6

    .line 711
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-ne p1, v7, :cond_5

    .line 712
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 713
    .local v1, "increasingRing":Z
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "increasing_ringtone"

    if-eqz v1, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 715
    .end local v1    # "increasingRing":Z
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_5
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_6

    .line 716
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {v5, p2}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v2

    .line 717
    .local v2, "index":I
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "dtmf_tone_type"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 719
    .end local v2    # "index":I
    .restart local p2    # "objValue":Ljava/lang/Object;
    :cond_6
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_7

    .line 720
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallFeaturesSetting;->handleTTYChange(Landroid/preference/Preference;Ljava/lang/Object;)V

    goto :goto_0

    .line 721
    :cond_7
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailProviders:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_c

    move-object v3, p2

    .line 722
    check-cast v3, Ljava/lang/String;

    .line 723
    .local v3, "newProviderKey":Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_8

    .line 724
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Voicemail Provider changes from \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\" to \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\"."

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 728
    :cond_8
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 729
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "No change is made toward VM provider setting."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 732
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->updateVMPreferenceWidgets(Ljava/lang/String;)V

    .line 734
    invoke-direct {p0, v3}, Lcom/android/phone/CallFeaturesSetting;->loadSettingsForVoiceMailProvider(Ljava/lang/String;)Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-result-object v4

    .line 743
    .local v4, "newProviderSettings":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    if-nez v4, :cond_a

    .line 745
    const-string v5, "CallFeaturesSetting"

    const-string v7, "Saved preferences not found - invoking config"

    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    .line 747
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->simulatePreferenceClick(Landroid/preference/Preference;)V

    goto/16 :goto_0

    .line 749
    :cond_a
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v5, :cond_b

    const-string v5, "Saved preferences found - switching to them"

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 751
    :cond_b
    iput-boolean v6, p0, Lcom/android/phone/CallFeaturesSetting;->mChangingVMorFwdDueToProviderChange:Z

    .line 752
    invoke-direct {p0, v3, v4}, Lcom/android/phone/CallFeaturesSetting;->saveVoiceMailAndForwardingNumber(Ljava/lang/String;Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;)V

    goto/16 :goto_0

    .line 754
    .end local v3    # "newProviderKey":Ljava/lang/String;
    .end local v4    # "newProviderSettings":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    :cond_c
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonSipCallOptions:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_2

    .line 755
    invoke-direct {p0, p2}, Lcom/android/phone/CallFeaturesSetting;->handleSipCallOptionsChange(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/16 v7, 0x384

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 559
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_2

    .line 560
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "increasing_ringtone"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_0

    move v4, v5

    :cond_0
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    :cond_1
    :goto_0
    return v5

    .line 563
    :cond_2
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mSubMenuVoicemailSettings:Lcom/android/phone/EditPhoneNumberPreference;

    if-eq p2, v6, :cond_1

    .line 565
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_4

    .line 566
    iget-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mVolte:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/phone/CallFeaturesSetting;->setVolteState(Z)V

    :cond_3
    :goto_1
    move v5, v4

    .line 651
    goto :goto_0

    .line 567
    :cond_4
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 568
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "dtmf_tone"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mPlayDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    :goto_2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v5, v4

    goto :goto_2

    .line 570
    :cond_6
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eq p2, v6, :cond_1

    .line 572
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eq p2, v6, :cond_1

    .line 574
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_8

    .line 575
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "call_auto_retry"

    iget-object v8, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v5

    :cond_7
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 579
    :cond_8
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_c

    .line 580
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_9

    move v1, v5

    .line 582
    .local v1, "hac":I
    :goto_3
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hearing_aid"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 586
    iget-object v7, p0, Lcom/android/phone/CallFeaturesSetting;->mAudioManager:Landroid/media/AudioManager;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "HACSetting="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v1, :cond_a

    const-string v6, "ON"

    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 588
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sonyericsson.telephony.intent.action.HAC_ENABLED_CHANGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    .local v2, "hacModeChanged":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 590
    const-string v4, "hacEnabled"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    :goto_5
    invoke-virtual {p0, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v1    # "hac":I
    .end local v2    # "hacModeChanged":Landroid/content/Intent;
    :cond_9
    move v1, v4

    .line 580
    goto :goto_3

    .line 586
    .restart local v1    # "hac":I
    :cond_a
    const-string v6, "OFF"

    goto :goto_4

    .line 592
    .restart local v2    # "hacModeChanged":Landroid/content/Intent;
    :cond_b
    const-string v6, "hacEnabled"

    invoke-virtual {v2, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_5

    .line 597
    .end local v1    # "hac":I
    .end local v2    # "hacModeChanged":Landroid/content/Intent;
    :cond_c
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_11

    .line 598
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_d

    .line 599
    const-string v6, "onPreferenceTreeClick: Voicemail Settings Preference is clicked."

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 601
    :cond_d
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_f

    .line 602
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v4, :cond_e

    .line 603
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceTreeClick: Invoking cfg intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 608
    :cond_e
    invoke-virtual {p2}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v6, 0x2

    invoke-virtual {p0, v4, v6}, Lcom/android/phone/CallFeaturesSetting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 611
    :cond_f
    sget-boolean v5, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v5, :cond_10

    .line 612
    const-string v5, "onPreferenceTreeClick: No Intent is available. Use default behavior defined in xml."

    invoke-static {v5}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 618
    :cond_10
    const-string v5, ""

    iput-object v5, p0, Lcom/android/phone/CallFeaturesSetting;->mPreviousVMProviderKey:Ljava/lang/String;

    .line 619
    iput-boolean v4, p0, Lcom/android/phone/CallFeaturesSetting;->mVMProviderSettingsForced:Z

    move v5, v4

    .line 622
    goto/16 :goto_0

    .line 624
    :cond_11
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_14

    .line 625
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_12

    .line 626
    const-string v4, "onPreferenceTreeClick: preference == mDualMicNoiseSuppressionCheckbox"

    invoke-static {v4}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 628
    :cond_12
    iget-object v4, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 629
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->turnDualMicNoiseSuppressionOn()V

    goto/16 :goto_0

    .line 632
    :cond_13
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->turnDualMicNoiseSuppressionOff()V

    goto/16 :goto_0

    .line 635
    :cond_14
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mAnsweringMachineSettings:Landroid/preference/PreferenceScreen;

    if-ne p2, v6, :cond_3

    .line 636
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v6, :cond_15

    .line 637
    const-string v6, "onPreferenceTreeClick: preference == mAnsweringMachineSettings"

    invoke-static {v6}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 639
    :cond_15
    iget-object v6, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 641
    .local v3, "prefs":Landroid/content/SharedPreferences;
    const-string v6, "am_launch_dialog_disabled_key"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 642
    .local v0, "dialogDisabled":Z
    if-eqz v0, :cond_16

    .line 643
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->launchAmSettings()V

    goto/16 :goto_0

    .line 645
    :cond_16
    invoke-virtual {p0, v7}, Landroid/app/Activity;->removeDialog(I)V

    .line 646
    invoke-direct {p0, v7}, Lcom/android/phone/CallFeaturesSetting;->showDialogIfForeground(I)V

    goto/16 :goto_0
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    .line 1529
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1530
    iput p1, p0, Lcom/android/phone/CallFeaturesSetting;->mCurrentDialogId:I

    .line 1531
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2151
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2152
    iput-boolean v1, p0, Lcom/android/phone/CallFeaturesSetting;->mForeground:Z

    .line 2154
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    invoke-direct {p0, v1}, Lcom/android/phone/CallFeaturesSetting;->updateNetworkRelatedSettings(Z)V

    .line 2211
    :goto_0
    return-void

    .line 2159
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 2160
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mVibrateWhenRinging:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2163
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 2164
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mIncreasingRingtone:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/CallFeaturesSetting;->getIncreasingRingtone(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2167
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 2168
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "dtmf_tone_type"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2170
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonDTMF:Landroid/preference/ListPreference;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 2173
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 2174
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "call_auto_retry"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2176
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonAutoRetry:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2179
    :cond_4
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 2180
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "hearing_aid"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2181
    iget-object v3, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonHAC:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_b

    :goto_2
    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2184
    :cond_5
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    if-eqz v0, :cond_6

    .line 2185
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2188
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mButtonTTY:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 2189
    invoke-direct {p0, v0}, Lcom/android/phone/CallFeaturesSetting;->updatePreferredTtyModeSummary(I)V

    .line 2192
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2194
    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->migrateVoicemailVibrationSettingsIfNeeded(Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2195
    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting;->mVoicemailNotificationVibrate:Landroid/preference/CheckBoxPreference;

    const-string v3, "button_voicemail_notification_vibrate_key"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2200
    :cond_7
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 2201
    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting;->mDualMicNoiseSuppressionCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->isDualMicNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 2204
    :cond_8
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2205
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initEqualizerValue()V

    .line 2206
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initSpeakerVoiceEnhancementValue()V

    .line 2207
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->initSlowTalkValue()V

    .line 2210
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/CallFeaturesSetting;->lookupRingtoneName()V

    goto/16 :goto_0

    :cond_a
    move v0, v2

    .line 2176
    goto :goto_1

    :cond_b
    move v1, v2

    .line 2181
    goto :goto_2
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I

    .prologue
    .line 805
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 807
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 813
    :goto_0
    return-void

    .line 811
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "startSubActivity: starting requested subactivity"

    invoke-static {v0}, Lcom/android/phone/CallFeaturesSetting;->log(Ljava/lang/String;)V

    .line 812
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
