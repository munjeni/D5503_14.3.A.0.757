.class public Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.super Landroid/app/DialogFragment;
.source "ConversationDialogFragment.java"


# static fields
.field public static final DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String; = "alert-dialog"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCheckBoxText:Ljava/lang/CharSequence;

.field private mCheckBoxTextId:I

.field private mCheckedItem:I

.field private mDlg:Landroid/app/Dialog;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconAttributeId:I

.field private mIconId:I

.field private mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mItemInSingleChoiceMode:Z

.field private mItems:[Ljava/lang/CharSequence;

.field private mMessageId:I

.field private mMessageText:Ljava/lang/CharSequence;

.field private mNegativeBtnResId:I

.field private mNegativeBtnText:Ljava/lang/CharSequence;

.field private mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNeutralBtnResId:I

.field private mNeutralBtnText:Ljava/lang/CharSequence;

.field private mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mPositiveBtnResId:I

.field private mPositiveBtnText:Ljava/lang/CharSequence;

.field private mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTitleId:I

.field private mTitleText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemInSingleChoiceMode:Z

    .line 51
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 55
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 56
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 58
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 59
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 63
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 67
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-void
.end method

.method public static showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/app/FragmentManager;)V
    .locals 9
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "positiveBtnResId"    # I
    .param p2, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeBtnResId"    # I
    .param p4, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "fragmentManager"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v5, 0x0

    .line 323
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v8, v5

    invoke-static/range {v0 .. v8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 326
    return-void
.end method

.method public static showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 12
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "positiveBtnResId"    # I
    .param p2, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeBtnResId"    # I
    .param p4, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "checkBoxTextResId"    # I
    .param p8, "checkBoxChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 338
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v11}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;II)V

    .line 341
    return-void
.end method

.method public static showConfirmDialog(Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Landroid/app/FragmentManager;ILandroid/widget/CompoundButton$OnCheckedChangeListener;Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "positiveBtnResId"    # I
    .param p2, "positiveButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "negativeBtnResId"    # I
    .param p4, "negativeButtonListener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p6, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p7, "checkBoxTextResId"    # I
    .param p8, "checkBoxChangeListener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;
    .param p9, "title"    # Ljava/lang/String;
    .param p10, "iconResId"    # I
    .param p11, "iconAttribute"    # I

    .prologue
    .line 357
    new-instance v0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    .line 358
    .local v0, "dlgFragment":Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
    if-eqz p9, :cond_0

    .line 359
    invoke-virtual {v0, p9}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {v0, p10}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIcon(I)V

    .line 361
    invoke-virtual {v0, p11}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setIconAttribute(I)V

    .line 363
    :cond_0
    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setMessage(Ljava/lang/CharSequence;)V

    .line 364
    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 365
    invoke-virtual {v0, p3, p4}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 366
    invoke-virtual {v0, p5}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 367
    invoke-virtual {v0, p7, p8}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->setCheckBox(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 368
    const-string v1, "alert-dialog"

    invoke-virtual {v0, p6, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 369
    return-void
.end method


# virtual methods
.method public getCheckBoxForTest()Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/Dialog;

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 208
    :cond_0
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 209
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 79
    .local v0, "fragmentManager":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 80
    .local v1, "fragmentTransaction":Landroid/app/FragmentTransaction;
    invoke-virtual {v1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 83
    .end local v0    # "fragmentManager":Landroid/app/FragmentManager;
    .end local v1    # "fragmentTransaction":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const v7, 0x7f0a0096

    const/4 v6, 0x3

    .line 87
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 89
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 92
    .local v3, "dlgBuilder":Landroid/app/AlertDialog$Builder;
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    if-lez v4, :cond_d

    .line 93
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 98
    :cond_0
    :goto_0
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconId:I

    if-lez v4, :cond_e

    .line 99
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 104
    :cond_1
    :goto_1
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconAttributeId:I

    if-lez v4, :cond_2

    .line 105
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconAttributeId:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 108
    :cond_2
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 111
    :cond_3
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    if-gtz v4, :cond_4

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_10

    .line 112
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030029

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 114
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "body":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextDirection(I)V

    .line 116
    const v4, 0x7f0a0099

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 117
    .local v1, "checkBox":Landroid/widget/CheckBox;
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    if-lez v4, :cond_f

    .line 118
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 122
    :cond_5
    :goto_2
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    if-eqz v4, :cond_6

    .line 123
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    :cond_6
    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBox:Landroid/widget/CheckBox;

    .line 127
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 135
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    :goto_3
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    if-lez v4, :cond_11

    .line 136
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .end local v0    # "body":Landroid/widget/TextView;
    .end local v2    # "contentView":Landroid/view/View;
    :cond_7
    :goto_4
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    if-lez v4, :cond_12

    .line 143
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 150
    :cond_8
    :goto_5
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    if-lez v4, :cond_13

    .line 151
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    :cond_9
    :goto_6
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    if-lez v4, :cond_14

    .line 159
    iget v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 170
    :cond_a
    :goto_7
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v4, :cond_b

    .line 171
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 174
    :cond_b
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    if-eqz v4, :cond_c

    .line 175
    iget-boolean v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemInSingleChoiceMode:Z

    if-eqz v4, :cond_15

    .line 176
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iget v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckedItem:I

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 182
    :cond_c
    :goto_8
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/Dialog;

    .line 183
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mDlg:Landroid/app/Dialog;

    return-object v4

    .line 94
    :cond_d
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 95
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 100
    :cond_e
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 101
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    .line 119
    .restart local v0    # "body":Landroid/widget/TextView;
    .restart local v1    # "checkBox":Landroid/widget/CheckBox;
    .restart local v2    # "contentView":Landroid/view/View;
    :cond_f
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 120
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 129
    .end local v0    # "body":Landroid/widget/TextView;
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "contentView":Landroid/view/View;
    :cond_10
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030028

    invoke-virtual {v4, v5, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 131
    .restart local v2    # "contentView":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 132
    .restart local v0    # "body":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/view/View;->setTextDirection(I)V

    .line 133
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    .line 137
    :cond_11
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_7

    .line 138
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 145
    .end local v0    # "body":Landroid/widget/TextView;
    .end local v2    # "contentView":Landroid/view/View;
    :cond_12
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_8

    .line 146
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_5

    .line 153
    :cond_13
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    .line 154
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_6

    .line 161
    :cond_14
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_a

    .line 162
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_7

    .line 178
    :cond_15
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_8
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v0, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 197
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 198
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 199
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 200
    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 201
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapter:Landroid/widget/ListAdapter;

    .line 296
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mAdapterItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 297
    return-void
.end method

.method public setCheckBox(ILandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "titleId"    # I
    .param p2, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 220
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxTextId:I

    .line 221
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 222
    return-void
.end method

.method public setCheckBox(Ljava/lang/CharSequence;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckBoxText:Ljava/lang/CharSequence;

    .line 226
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCheckboxChangedListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 227
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "iconId"    # I

    .prologue
    .line 246
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconId:I

    .line 247
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 243
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 0
    .param p1, "iconAttributeId"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mIconAttributeId:I

    .line 251
    return-void
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 300
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    .line 301
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 302
    return-void
.end method

.method public setMessage(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 230
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageId:I

    .line 231
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mMessageText:Ljava/lang/CharSequence;

    .line 235
    return-void
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 284
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnResId:I

    .line 285
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 286
    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeBtnText:Ljava/lang/CharSequence;

    .line 291
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 292
    return-void
.end method

.method public setNegativeButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNegativeButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 192
    return-void
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 278
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnResId:I

    .line 279
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 280
    return-void
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralBtnText:Ljava/lang/CharSequence;

    .line 273
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mNeutralButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 274
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 268
    return-void
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 261
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnResId:I

    .line 262
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 263
    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 255
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveBtnText:Ljava/lang/CharSequence;

    .line 256
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 257
    return-void
.end method

.method public setPositiveButtonClickListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mPositiveButtonClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 188
    return-void
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 306
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItems:[Ljava/lang/CharSequence;

    .line 307
    iput p2, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mCheckedItem:I

    .line 308
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mItemInSingleChoiceMode:Z

    .line 310
    return-void
.end method

.method public setTitle(I)V
    .locals 0
    .param p1, "titleId"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleId:I

    .line 213
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->mTitleText:Ljava/lang/CharSequence;

    .line 217
    return-void
.end method
