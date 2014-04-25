.class Lcom/sonyericsson/conversations/ui/EditorFragment$3;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->onAddTextTemplate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$templateStrings:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1390
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->val$templateStrings:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1392
    if-eqz p1, :cond_0

    .line 1393
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1395
    :cond_0
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->val$templateStrings:[Ljava/lang/String;

    aget-object v5, v6, p2

    .line 1396
    .local v5, "textTemplate":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1397
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1398
    .local v4, "selectionStart":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1399
    .local v3, "selectionEnd":I
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1400
    .local v1, "previousText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {v1, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1403
    .local v0, "combinedText":Ljava/lang/String;
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    .line 1404
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1405
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int v2, v4, v6

    .line 1407
    .local v2, "selection":I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v7}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->length()I

    move-result v7

    if-le v6, v7, :cond_1

    .line 1408
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 1410
    :cond_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$3;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBodyInput:Landroid/widget/EditText;
    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$000(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/widget/EditText;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1412
    .end local v0    # "combinedText":Ljava/lang/String;
    .end local v1    # "previousText":Ljava/lang/String;
    .end local v2    # "selection":I
    .end local v3    # "selectionEnd":I
    .end local v4    # "selectionStart":I
    :cond_2
    return-void
.end method
