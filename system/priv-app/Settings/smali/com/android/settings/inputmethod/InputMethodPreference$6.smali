.class Lcom/android/settings/inputmethod/InputMethodPreference$6;
.super Ljava/lang/Object;
.source "InputMethodPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodPreference;->showSecurityWarnDialog(Landroid/view/inputmethod/InputMethodInfo;Lcom/android/settings/inputmethod/InputMethodPreference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

.field final synthetic val$chkPref:Lcom/android/settings/inputmethod/InputMethodPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodPreference;Lcom/android/settings/inputmethod/InputMethodPreference;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->this$0:Lcom/android/settings/inputmethod/InputMethodPreference;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->val$chkPref:Lcom/android/settings/inputmethod/InputMethodPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x1

    .line 294
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodPreference$6;->val$chkPref:Lcom/android/settings/inputmethod/InputMethodPreference;

    # invokes: Lcom/android/settings/inputmethod/InputMethodPreference;->setChecked(ZZ)V
    invoke-static {v0, v1, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->access$000(Lcom/android/settings/inputmethod/InputMethodPreference;ZZ)V

    .line 295
    return-void
.end method
