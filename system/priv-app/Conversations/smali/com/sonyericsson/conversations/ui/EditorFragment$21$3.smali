.class Lcom/sonyericsson/conversations/ui/EditorFragment$21$3;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment$21;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment$21;)V
    .locals 0

    .prologue
    .line 2110
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$3;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$3;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    # getter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mMasterPile:Lcom/sonyericsson/conversations/ui/PileView;
    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$2200(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/PileView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/MessageContentAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2115
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$21$3;->this$1:Lcom/sonyericsson/conversations/ui/EditorFragment$21;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/EditorFragment$21;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    const/4 v1, 0x0

    # setter for: Lcom/sonyericsson/conversations/ui/EditorFragment;->mBlockMasterPileTap:Z
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->access$1902(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)Z

    .line 2117
    return-void
.end method
