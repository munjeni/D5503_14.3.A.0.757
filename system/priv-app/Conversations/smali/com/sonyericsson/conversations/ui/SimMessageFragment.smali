.class public Lcom/sonyericsson/conversations/ui/SimMessageFragment;
.super Landroid/app/DialogFragment;
.source "SimMessageFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;


# static fields
.field public static final DIALOG_FRAGMENT_TAG_NAME:Ljava/lang/String; = "sim-message-dialog"

.field private static final ICC_URI:Landroid/net/Uri;

.field public static final MENU_ID_DELETE:I = 0x3

.field public static final MENU_ID_SAVE_NUMBER:I = 0x1

.field public static final MENU_ID_TEXT_COPY:I = 0x2

.field private static final RESTORE_KEY_ADDR:Ljava/lang/String; = "restore_address"

.field private static final RESTORE_KEY_BODY:Ljava/lang/String; = "restore_body"

.field private static final RESTORE_KEY_DATE:Ljava/lang/String; = "restore_date"

.field private static final RESTORE_KEY_INDEX:Ljava/lang/String; = "restore_index"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCM:Landroid/view/ContextMenu;

.field private mDate:Ljava/lang/Long;

.field private mIndex:Ljava/lang/String;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

.field private mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field private mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

.field private mMsgBody:Ljava/lang/String;

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "content://sms/icc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->ICC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 185
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 143
    new-instance v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/Long;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "msgBody"    # Ljava/lang/String;
    .param p4, "index"    # Ljava/lang/String;

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 68
    new-instance v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 143
    new-instance v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SimMessageFragment$2;-><init>(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mDate:Ljava/lang/Long;

    .line 190
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mAddress:Ljava/lang/String;

    .line 191
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMsgBody:Ljava/lang/String;

    .line 192
    iput-object p4, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mIndex:Ljava/lang/String;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mIndex:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->ICC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Lcom/sonyericsson/conversations/model/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    .param p1, "x1"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->initMessageActionsController(Lcom/sonyericsson/conversations/model/Message;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/conversations/ui/SimMessageFragment;)Landroid/view/MenuItem$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sonyericsson/conversations/ui/SimMessageFragment;Landroid/view/ContextMenu;)Landroid/view/ContextMenu;
    .locals 0
    .param p0, "x0"    # Lcom/sonyericsson/conversations/ui/SimMessageFragment;
    .param p1, "x1"    # Landroid/view/ContextMenu;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mCM:Landroid/view/ContextMenu;

    return-object p1
.end method

.method private initMessageActionsController(Lcom/sonyericsson/conversations/model/Message;)V
    .locals 6
    .param p1, "message"    # Lcom/sonyericsson/conversations/model/Message;

    .prologue
    .line 137
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {p1}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->getDefaultMessageOptions(Lcom/sonyericsson/conversations/model/Message;)I

    move-result v5

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;-><init>(Landroid/content/Context;JLcom/sonyericsson/conversations/model/Message;I)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    .line 140
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageActionsController:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->setContentDeleteListener(Lcom/sonyericsson/conversations/ui/util/MessageActionsController$DeleteListener;)V

    .line 141
    return-void
.end method


# virtual methods
.method public getContextMenu()Landroid/view/ContextMenu;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mCM:Landroid/view/ContextMenu;

    return-object v0
.end method

.method public onContentDeleted()V
    .locals 1

    .prologue
    .line 259
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->isUseTwoPane()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 262
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    .line 130
    .local v0, "dialog":Landroid/app/Dialog;
    const v1, 0x7f0700bb

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 132
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 197
    const v5, 0x7f03002c

    invoke-virtual {p1, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 199
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const v6, 0x7f0a00a0

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 200
    .local v1, "content":Landroid/view/ViewStub;
    const v5, 0x7f030032

    invoke-virtual {v1, v5}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 201
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setBubbleContent(Landroid/view/View;)V

    .line 203
    if-eqz p3, :cond_0

    .line 204
    const-string v5, "restore_date"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mDate:Ljava/lang/Long;

    .line 205
    const-string v5, "restore_address"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mAddress:Ljava/lang/String;

    .line 206
    const-string v5, "restore_body"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMsgBody:Ljava/lang/String;

    .line 207
    const-string v5, "restore_index"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mIndex:Ljava/lang/String;

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 210
    .local v2, "context":Landroid/content/Context;
    if-nez v2, :cond_1

    .line 211
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    .line 235
    :goto_0
    return-object v5

    .line 213
    :cond_1
    invoke-static {v2}, Lcom/sonyericsson/conversations/model/SmsMessage;->createDraft(Landroid/content/Context;)Lcom/sonyericsson/conversations/model/SmsMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 214
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMsgBody:Ljava/lang/String;

    iput-object v6, v5, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    .line 215
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/model/SmsMessage;->setAddress(Ljava/lang/String;)V

    .line 216
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mDate:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/sonyericsson/conversations/model/Message;->date:J

    .line 217
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    iput v8, v5, Lcom/sonyericsson/conversations/model/Message;->box:I

    .line 218
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    const/4 v6, 0x2

    iput v6, v5, Lcom/sonyericsson/conversations/model/Message;->deliveryStatus:I

    .line 220
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    invoke-static {v2}, Lcom/sonyericsson/conversations/ui/util/DateFormatter;->getFormatter(Landroid/content/Context;)Lcom/sonyericsson/conversations/ui/util/DateFormatter;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setDateFormatter(Lcom/sonyericsson/conversations/ui/util/DateFormatter;)V

    .line 222
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700ee

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "senderString":Ljava/lang/String;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {v5, v3, v6}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setParticipantStrings(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 227
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const v6, 0x7f0a009f

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 228
    .local v0, "bubble":Landroid/view/View;
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mTextViewContextListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 231
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    const v6, 0x7f0a00b2

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 232
    .local v4, "starContainer":Landroid/view/View;
    if-eqz v4, :cond_2

    .line 233
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 235
    :cond_2
    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 241
    const-string v0, "restore_date"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mDate:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 242
    const-string v0, "restore_address"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "restore_body"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMsgBody:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v0, "restore_index"

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mIndex:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public refresh()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessageView:Lcom/sonyericsson/conversations/ui/MessageBubbleView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SimMessageFragment;->mMessage:Lcom/sonyericsson/conversations/model/SmsMessage;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/MessageBubbleView;->setMessage(Lcom/sonyericsson/conversations/model/Message;J)V

    .line 255
    :cond_0
    return-void
.end method
