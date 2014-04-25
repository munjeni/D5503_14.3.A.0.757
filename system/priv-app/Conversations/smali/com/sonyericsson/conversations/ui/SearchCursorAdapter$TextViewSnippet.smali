.class public Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;
.super Landroid/widget/TextView;
.source "SearchCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/SearchCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextViewSnippet"
.end annotation


# static fields
.field private static sEllipsis:Ljava/lang/String;


# instance fields
.field private mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

.field private mFullText:Ljava/lang/String;

.field private mPattern:Ljava/util/regex/Pattern;

.field private mTargetString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string v0, "\u2026"

    sput-object v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initForegroundColorSpan()V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initForegroundColorSpan()V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->initForegroundColorSpan()V

    .line 67
    return-void
.end method

.method private initForegroundColorSpan()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lcom/sonyericsson/conversations/ui/UiConfig;->getAccentColor()I

    move-result v0

    .line 161
    .local v0, "accentColor":I
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    .line 162
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 27
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    if-nez v23, :cond_1

    .line 77
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 157
    :goto_0
    return-void

    .line 81
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 82
    .local v9, "fullTextLower":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    .line 84
    .local v20, "targetStringLower":Ljava/lang/String;
    const/16 v19, 0x0

    .line 85
    .local v19, "startPos":I
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v14

    .line 86
    .local v14, "searchStringLength":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    .line 88
    .local v5, "bodyLength":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 89
    .local v10, "m":Ljava/util/regex/Matcher;
    if-eqz v10, :cond_2

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 90
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v19

    .line 93
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v22

    .line 95
    .local v22, "tp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    .line 96
    .local v15, "searchStringWidth":F
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 98
    .local v21, "textFieldWidth":F
    const/16 v16, 0x0

    .line 99
    .local v16, "snippetString":Ljava/lang/String;
    cmpl-float v23, v15, v21

    if-lez v23, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    add-int v24, v19, v14

    move-object/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 143
    :cond_3
    if-eqz v16, :cond_a

    .line 144
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    .local v17, "spannable":Landroid/text/SpannableString;
    const/16 v18, 0x0

    .line 147
    .local v18, "start":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    .line 148
    :goto_1
    move/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mForegroundColorSpan:Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v23, v0

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->start()I

    move-result v24

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v25

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 150
    invoke-virtual {v10}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    goto :goto_1

    .line 102
    .end local v17    # "spannable":Landroid/text/SpannableString;
    .end local v18    # "start":I
    :cond_4
    sget-object v23, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 103
    .local v7, "ellipsisWidth":F
    const/high16 v23, 0x40000000

    mul-float v23, v23, v7

    sub-float v21, v21, v23

    .line 106
    const/4 v13, -0x1

    .line 107
    .local v13, "offset":I
    const/16 v18, -0x1

    .line 108
    .restart local v18    # "start":I
    const/4 v8, -0x1

    .line 115
    .local v8, "end":I
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 117
    const/16 v23, 0x0

    sub-int v24, v19, v13

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 118
    .local v12, "newstart":I
    add-int v23, v19, v14

    add-int v23, v23, v13

    move/from16 v0, v23

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 120
    .local v11, "newend":I
    move/from16 v0, v18

    if-ne v12, v0, :cond_5

    if-eq v11, v8, :cond_3

    .line 124
    :cond_5
    move/from16 v18, v12

    .line 125
    move v8, v11

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "candidate":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v23

    cmpl-float v23, v23, v21

    if-gtz v23, :cond_3

    .line 138
    const-string v24, "%s%s%s"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    if-nez v18, :cond_7

    const-string v23, ""

    :goto_4
    aput-object v23, v25, v26

    const/16 v23, 0x1

    aput-object v6, v25, v23

    const/16 v26, 0x2

    if-ne v8, v5, :cond_8

    const-string v23, ""

    :goto_5
    aput-object v23, v25, v26

    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 140
    goto :goto_2

    .line 130
    .end local v6    # "candidate":Ljava/lang/String;
    :cond_6
    const-string v6, ""

    goto :goto_3

    .line 138
    .restart local v6    # "candidate":Ljava/lang/String;
    :cond_7
    sget-object v23, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_4

    :cond_8
    sget-object v23, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->sEllipsis:Ljava/lang/String;

    goto :goto_5

    .line 152
    .end local v6    # "candidate":Ljava/lang/String;
    .end local v7    # "ellipsisWidth":F
    .end local v8    # "end":I
    .end local v11    # "newend":I
    .end local v12    # "newstart":I
    .end local v13    # "offset":I
    .restart local v17    # "spannable":Landroid/text/SpannableString;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    .end local v17    # "spannable":Landroid/text/SpannableString;
    .end local v18    # "start":I
    :cond_a
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    goto/16 :goto_0
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "fullText"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .prologue
    .line 166
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mPattern:Ljava/util/regex/Pattern;

    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mFullText:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/SearchCursorAdapter$TextViewSnippet;->mTargetString:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 171
    return-void
.end method
