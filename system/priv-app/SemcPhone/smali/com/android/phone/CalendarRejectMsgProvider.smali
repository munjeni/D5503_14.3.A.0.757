.class public Lcom/android/phone/CalendarRejectMsgProvider;
.super Ljava/lang/Object;
.source "CalendarRejectMsgProvider.java"

# interfaces
.implements Lcom/android/phone/ContextualRejectMsgProvider;


# static fields
.field private static final COLS_ATT:[Ljava/lang/String;

.field private static final COLS_INST:[Ljava/lang/String;


# instance fields
.field private mCalendarIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextualRejectMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ContextualRejectMsg;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "event_id"

    aput-object v1, v0, v2

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "begin"

    aput-object v1, v0, v4

    const-string v1, "end"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_INST:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v2

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v3

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v4

    const-string v1, "attendeeType"

    aput-object v1, v0, v5

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_ATT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    .line 70
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CalendarRejectMsgProvider"

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    .line 72
    return-void
.end method

.method private calcAttendenceProbability(J)Lcom/android/phone/ContextualRejectMsg$Probability;
    .locals 13
    .param p1, "eventID"    # J

    .prologue
    .line 282
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->LOW:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 284
    .local v5, "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    iget-object v10, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_ATT:[Ljava/lang/String;

    invoke-static {v10, p1, p2, v11}, Landroid/provider/CalendarContract$Attendees;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 286
    .local v0, "attCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    .line 287
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    .line 290
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 291
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 292
    .local v2, "email":Ljava/lang/String;
    const/4 v10, 0x2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 293
    .local v6, "relationship":I
    const/4 v10, 0x3

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 294
    .local v9, "type":I
    const/4 v10, 0x4

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 296
    .local v8, "status":I
    const/4 v10, 0x2

    if-ne v6, v10, :cond_4

    .line 297
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->CERTAIN:Lcom/android/phone/ContextualRejectMsg$Probability;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v2    # "email":Ljava/lang/String;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "relationship":I
    .end local v8    # "status":I
    .end local v9    # "type":I
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-nez v10, :cond_0

    .line 329
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 331
    :cond_3
    return-object v5

    .line 300
    .restart local v2    # "email":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v6    # "relationship":I
    .restart local v8    # "status":I
    .restart local v9    # "type":I
    :cond_4
    :try_start_1
    iget-object v10, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 301
    .local v7, "s":Ljava/lang/String;
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 302
    packed-switch v8, :pswitch_data_0

    goto :goto_1

    .line 314
    :pswitch_0
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->MEDIUM:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 315
    goto :goto_1

    .line 304
    :pswitch_1
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->HIGH:Lcom/android/phone/ContextualRejectMsg$Probability;

    .line 305
    goto :goto_1

    .line 308
    :pswitch_2
    sget-object v5, Lcom/android/phone/ContextualRejectMsg$Probability;->LOW:Lcom/android/phone/ContextualRejectMsg$Probability;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 309
    goto :goto_1

    .line 324
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "relationship":I
    .end local v7    # "s":Ljava/lang/String;
    .end local v8    # "status":I
    .end local v9    # "type":I
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/lang/Exception;
    const-string v10, "CalendarRejectMsgProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attendees.query Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private checkEventCalendarID(J)Z
    .locals 11
    .param p1, "eventID"    # J

    .prologue
    const/4 v2, 0x0

    .line 147
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CalendarRejectMsgProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEventCalendarID eventID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    const/4 v10, 0x0

    .line 150
    .local v10, "match":Z
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 154
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 155
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 157
    :cond_1
    const-string v1, "calendar_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 159
    .local v7, "calendarID":I
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEventCalendarID eventID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calendarID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_2
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 163
    .local v9, "id":I
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_4

    .line 164
    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEventCalendarID listID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " calendarID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4
    if-ne v9, v7, :cond_3

    .line 168
    const/4 v10, 0x1

    .line 172
    .end local v9    # "id":I
    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    .end local v7    # "calendarID":I
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_7
    return v10
.end method

.method private loadAccountEmails()V
    .locals 10

    .prologue
    .line 92
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "CalendarRejectMsgProvider"

    const-string v8, "loadAccountEmails"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 94
    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 95
    .local v3, "emailPattern":Ljava/util/regex/Pattern;
    iget-object v7, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 96
    .local v1, "accounts":[Landroid/accounts/Account;
    move-object v2, v1

    .local v2, "arr$":[Landroid/accounts/Account;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_3

    aget-object v0, v2, v4

    .line 97
    .local v0, "account":Landroid/accounts/Account;
    iget-object v7, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 98
    iget-object v6, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 99
    .local v6, "possibleEmail":Ljava/lang/String;
    sget-boolean v7, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v7, :cond_1

    const-string v7, "CalendarRejectMsgProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAccountEmails: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_1
    iget-object v7, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v6    # "possibleEmail":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "account":Landroid/accounts/Account;
    :cond_3
    return-void
.end method

.method private loadCalendarsIDs()V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CalendarRejectMsgProvider"

    const-string v3, "loadCalendarsIDs"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 115
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 116
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 117
    .local v7, "c":Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 118
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 120
    :cond_1
    const-string v1, "_id"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 122
    .local v8, "calendarID":I
    const-string v1, "ownerAccount"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 125
    .local v6, "accountOwner":Ljava/lang/String;
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCalendarsIDs _ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v1, :cond_3

    .line 127
    const-string v1, "CalendarRejectMsgProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadCalendarsIDs OWNER_ACCOUNT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 131
    .local v10, "s":Ljava/lang/String;
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 132
    iget-object v1, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mCalendarIDList:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    .end local v10    # "s":Ljava/lang/String;
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 137
    .end local v6    # "accountOwner":Ljava/lang/String;
    .end local v8    # "calendarID":I
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_7
    return-void
.end method

.method private readCalendarInstances()V
    .locals 36

    .prologue
    .line 184
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "CalendarRejectMsgProvider"

    const-string v5, "readCalendarInstances"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v16

    .line 187
    .local v16, "df":Ljava/text/Format;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v33

    .line 189
    .local v33, "tf":Ljava/text/Format;
    new-instance v23, Ljava/util/LinkedHashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedHashSet;-><init>()V

    .line 191
    .local v23, "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    new-instance v24, Ljava/util/LinkedHashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/LinkedHashSet;-><init>()V

    .line 194
    .local v24, "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 195
    .local v3, "c":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Ljava/util/Calendar;->set(IIIII)V

    .line 196
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 197
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v29

    .line 198
    .local v29, "queryStartTime":J
    const/4 v4, 0x5

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 199
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v27

    .line 201
    .local v27, "queryEndTime":J
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v11

    .line 202
    .local v11, "builder":Landroid/net/Uri$Builder;
    move-wide/from16 v0, v29

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 203
    move-wide/from16 v0, v27

    invoke-static {v11, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 204
    const/4 v4, 0x5

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/Calendar;->add(II)V

    .line 205
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v27

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 208
    .local v13, "currTime":J
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v15

    .line 210
    .local v15, "currentTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v11}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CalendarRejectMsgProvider;->COLS_INST:[Ljava/lang/String;

    const-string v7, "visible =? AND dtstart < ? AND dtend > ? AND ( dtend <= ? OR allDay=1 )"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v35, "1"

    aput-object v35, v8, v9

    const/4 v9, 0x1

    aput-object v15, v8, v9

    const/4 v9, 0x2

    aput-object v15, v8, v9

    const/4 v9, 0x3

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v8, v9

    const-string v9, "end ASC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 215
    .local v22, "instCursor":Landroid/database/Cursor;
    if-eqz v22, :cond_4

    .line 216
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 219
    :cond_1
    const/4 v4, 0x0

    :try_start_1
    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 220
    .local v20, "eventID":J
    const/4 v4, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 221
    .local v34, "title":Ljava/lang/String;
    const/4 v4, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    .line 222
    .local v31, "startTime":J
    const/4 v4, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 223
    .local v18, "endTime":J
    const/4 v4, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    const/4 v10, 0x1

    .line 225
    .local v10, "allDay":Z
    :goto_0
    const/4 v12, 0x0

    .line 228
    .local v12, "contextualRejectMsg":Lcom/android/phone/ContextualRejectMsg;
    if-nez v10, :cond_7

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0110

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .line 233
    .local v25, "msg":Ljava/lang/String;
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_2

    const-string v4, "CalendarRejectMsgProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " endTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CalendarRejectMsgProvider;->calcAttendenceProbability(J)Lcom/android/phone/ContextualRejectMsg$Probability;

    move-result-object v26

    .line 245
    .local v26, "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    new-instance v12, Lcom/android/phone/ContextualRejectMsg;

    .end local v12    # "contextualRejectMsg":Lcom/android/phone/ContextualRejectMsg;
    const v4, 0x7f0200fc

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v12, v0, v1, v4}, Lcom/android/phone/ContextualRejectMsg;-><init>(Ljava/lang/String;Lcom/android/phone/ContextualRejectMsg$Probability;I)V

    .line 248
    .restart local v12    # "contextualRejectMsg":Lcom/android/phone/ContextualRejectMsg;
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/phone/CalendarRejectMsgProvider;->checkEventCalendarID(J)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 249
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    .end local v10    # "allDay":Z
    .end local v12    # "contextualRejectMsg":Lcom/android/phone/ContextualRejectMsg;
    .end local v18    # "endTime":J
    .end local v20    # "eventID":J
    .end local v25    # "msg":Ljava/lang/String;
    .end local v26    # "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    .end local v31    # "startTime":J
    .end local v34    # "title":Ljava/lang/String;
    :goto_2
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 260
    :cond_3
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 264
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_5

    const-string v4, "CalendarRejectMsgProvider"

    const-string v5, "DEFAULT Calendar events used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    move-object/from16 v0, v23

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 274
    .end local v3    # "c":Ljava/util/Calendar;
    .end local v11    # "builder":Landroid/net/Uri$Builder;
    .end local v13    # "currTime":J
    .end local v15    # "currentTime":Ljava/lang/String;
    .end local v16    # "df":Ljava/text/Format;
    .end local v22    # "instCursor":Landroid/database/Cursor;
    .end local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .end local v24    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .end local v27    # "queryEndTime":J
    .end local v29    # "queryStartTime":J
    .end local v33    # "tf":Ljava/text/Format;
    :goto_3
    return-void

    .line 223
    .restart local v3    # "c":Ljava/util/Calendar;
    .restart local v11    # "builder":Landroid/net/Uri$Builder;
    .restart local v13    # "currTime":J
    .restart local v15    # "currentTime":Ljava/lang/String;
    .restart local v16    # "df":Ljava/text/Format;
    .restart local v18    # "endTime":J
    .restart local v20    # "eventID":J
    .restart local v22    # "instCursor":Landroid/database/Cursor;
    .restart local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .restart local v24    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .restart local v27    # "queryEndTime":J
    .restart local v29    # "queryStartTime":J
    .restart local v31    # "startTime":J
    .restart local v33    # "tf":Ljava/text/Format;
    .restart local v34    # "title":Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 237
    .restart local v10    # "allDay":Z
    .restart local v12    # "contextualRejectMsg":Lcom/android/phone/ContextualRejectMsg;
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0111

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    .restart local v25    # "msg":Ljava/lang/String;
    goto :goto_1

    .line 251
    .restart local v26    # "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    :cond_8
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 254
    .end local v10    # "allDay":Z
    .end local v12    # "contextualRejectMsg":Lcom/android/phone/ContextualRejectMsg;
    .end local v18    # "endTime":J
    .end local v20    # "eventID":J
    .end local v25    # "msg":Ljava/lang/String;
    .end local v26    # "probability":Lcom/android/phone/ContextualRejectMsg$Probability;
    .end local v31    # "startTime":J
    .end local v34    # "title":Ljava/lang/String;
    :catch_0
    move-exception v17

    .line 255
    .local v17, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "CalendarRejectMsgProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "e1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    .line 270
    .end local v3    # "c":Ljava/util/Calendar;
    .end local v11    # "builder":Landroid/net/Uri$Builder;
    .end local v13    # "currTime":J
    .end local v15    # "currentTime":Ljava/lang/String;
    .end local v16    # "df":Ljava/text/Format;
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v22    # "instCursor":Landroid/database/Cursor;
    .end local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .end local v24    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .end local v27    # "queryEndTime":J
    .end local v29    # "queryStartTime":J
    .end local v33    # "tf":Ljava/text/Format;
    :catch_1
    move-exception v17

    .line 271
    .restart local v17    # "e":Ljava/lang/Exception;
    const-string v4, "CalendarRejectMsgProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Instances.query Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 267
    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v3    # "c":Ljava/util/Calendar;
    .restart local v11    # "builder":Landroid/net/Uri$Builder;
    .restart local v13    # "currTime":J
    .restart local v15    # "currentTime":Ljava/lang/String;
    .restart local v16    # "df":Ljava/text/Format;
    .restart local v22    # "instCursor":Landroid/database/Cursor;
    .restart local v23    # "mContextualRejectMsgListDefault":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .restart local v24    # "mContextualRejectMsgListSecondary":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Lcom/android/phone/ContextualRejectMsg;>;"
    .restart local v27    # "queryEndTime":J
    .restart local v29    # "queryStartTime":J
    .restart local v33    # "tf":Ljava/text/Format;
    :cond_9
    :try_start_5
    sget-boolean v4, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v4, :cond_a

    const-string v4, "CalendarRejectMsgProvider"

    const-string v5, "SECONDARY Calendar events used"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized getMessages()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/ContextualRejectMsg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/CalendarRejectMsgProvider;->loadAccountEmails()V

    .line 81
    invoke-direct {p0}, Lcom/android/phone/CalendarRejectMsgProvider;->loadCalendarsIDs()V

    .line 82
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CalendarRejectMsgProvider"

    const-string v1, "getMessages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 84
    invoke-direct {p0}, Lcom/android/phone/CalendarRejectMsgProvider;->readCalendarInstances()V

    .line 85
    iget-object v0, p0, Lcom/android/phone/CalendarRejectMsgProvider;->mContextualRejectMsgList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
