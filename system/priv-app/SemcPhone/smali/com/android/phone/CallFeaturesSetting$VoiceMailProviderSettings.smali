.class Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProviderSettings"
.end annotation


# instance fields
.field public forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field public voicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p2, "voicemailNumber"    # Ljava/lang/String;
    .param p3, "forwardingNumber"    # Ljava/lang/String;
    .param p4, "timeSeconds"    # I

    .prologue
    const/4 v3, 0x1

    .line 381
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    .line 383
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 384
    :cond_0
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 398
    :cond_1
    return-void

    .line 386
    :cond_2
    # getter for: Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$300()[I

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 387
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 388
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 389
    .local v0, "fi":Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v2, v1

    .line 390
    # getter for: Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I
    invoke-static {}, Lcom/android/phone/CallFeaturesSetting;->access$300()[I

    move-result-object v2

    aget v2, v2, v1

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 391
    iget v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 392
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 393
    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 394
    iput-object p3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 395
    iput p4, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 387
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 391
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 0
    .param p2, "voicemailNumber"    # Ljava/lang/String;
    .param p3, "infos"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    .line 402
    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 403
    return-void
.end method

.method private forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 7
    .param p1, "infos1"    # [Lcom/android/internal/telephony/CallForwardInfo;
    .param p2, "infos2"    # [Lcom/android/internal/telephony/CallForwardInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 422
    if-ne p1, p2, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v3

    .line 423
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v3, v4

    goto :goto_0

    .line 424
    :cond_3
    array-length v5, p1

    array-length v6, p2

    if-eq v5, v6, :cond_4

    move v3, v4

    goto :goto_0

    .line 425
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, p1

    if-ge v0, v5, :cond_0

    .line 426
    aget-object v1, p1, v0

    .line 427
    .local v1, "i1":Lcom/android/internal/telephony/CallForwardInfo;
    aget-object v2, p2, v0

    .line 428
    .local v2, "i2":Lcom/android/internal/telephony/CallForwardInfo;
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v6, :cond_7

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v5, v6, :cond_7

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v5, v6, :cond_7

    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    if-ne v5, v6, :cond_7

    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-nez v5, :cond_5

    iget-object v5, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_6

    :cond_5
    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    iget v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget v6, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-eq v5, v6, :cond_8

    :cond_7
    move v3, v4

    .line 435
    goto :goto_0

    .line 425
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 407
    if-nez p1, :cond_1

    .line 411
    :cond_0
    :goto_0
    return v1

    .line 408
    :cond_1
    instance-of v2, p1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 409
    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    .line 411
    .local v0, "v":Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
