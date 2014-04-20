.class public Lcom/android/phone/CdmaSubscriptionListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaSubscriptionListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaSubscriptionListPreference$1;,
        Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaSubscriptionListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 52
    new-instance v0, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;-><init>(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/phone/CdmaSubscriptionListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    .line 53
    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    .line 54
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaSubscriptionListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CdmaSubscriptionListPreference;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/CdmaSubscriptionListPreference;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/CdmaSubscriptionListPreference;
    .param p1, "x1"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method private setCurrentCdmaSubscriptionModeValue()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "subscription_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 59
    .local v0, "cdmaSubscriptionMode":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .param p1, "positiveResult"    # Z

    .prologue
    .line 75
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 77
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 83
    .local v0, "buttonCdmaSubscriptionMode":I
    const-string v2, "CdmaSubscriptionListPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting new value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    packed-switch v0, :pswitch_data_0

    .line 93
    const/4 v1, 0x1

    .line 98
    .local v1, "statusCdmaSubscriptionMode":I
    :goto_1
    iget-object v2, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/CdmaSubscriptionListPreference;->mHandler:Lcom/android/phone/CdmaSubscriptionListPreference$CdmaSubscriptionButtonHandler;

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    goto :goto_0

    .line 87
    .end local v1    # "statusCdmaSubscriptionMode":I
    :pswitch_0
    const/4 v1, 0x1

    .line 88
    .restart local v1    # "statusCdmaSubscriptionMode":I
    goto :goto_1

    .line 90
    .end local v1    # "statusCdmaSubscriptionMode":I
    :pswitch_1
    const/4 v1, 0x0

    .line 91
    .restart local v1    # "statusCdmaSubscriptionMode":I
    goto :goto_1

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/CdmaSubscriptionListPreference;->setCurrentCdmaSubscriptionModeValue()V

    .line 70
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
