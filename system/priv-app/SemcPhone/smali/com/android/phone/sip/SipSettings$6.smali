.class Lcom/android/phone/sip/SipSettings$6;
.super Ljava/lang/Object;
.source "SipSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipSettings;->handleProfileClick(Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipSettings;

.field final synthetic val$profile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/phone/sip/SipSettings$6;->this$0:Lcom/android/phone/sip/SipSettings;

    iput-object p2, p0, Lcom/android/phone/sip/SipSettings$6;->val$profile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$6;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$6;->val$profile:Landroid/net/sip/SipProfile;

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSettings;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 374
    iget-object v0, p0, Lcom/android/phone/sip/SipSettings$6;->this$0:Lcom/android/phone/sip/SipSettings;

    iget-object v1, p0, Lcom/android/phone/sip/SipSettings$6;->val$profile:Landroid/net/sip/SipProfile;

    # invokes: Lcom/android/phone/sip/SipSettings;->unregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v0, v1}, Lcom/android/phone/sip/SipSettings;->access$1000(Lcom/android/phone/sip/SipSettings;Landroid/net/sip/SipProfile;)V

    .line 375
    return-void
.end method
