.class public Lcom/wordloco/wordchallenge/c/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static a:I


# instance fields
.field b:I

.field private c:Lcom/wordloco/wordchallenge/c/c;

.field private d:Lcom/wordloco/wordchallenge/c/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/wordloco/wordchallenge/c/b;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/wordloco/wordchallenge/c/b;->b:I

    .line 30
    return-void
.end method


# virtual methods
.method public a(Lcom/wordloco/wordchallenge/view/Game;)Lcom/wordloco/wordchallenge/c/c;
    .locals 6

    .prologue
    .line 33
    new-instance v0, Lcom/wordloco/wordchallenge/c/c;

    iget-object v1, p1, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/b/d;->c()I

    move-result v1

    iget-object v2, p1, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v2}, Lcom/wordloco/wordchallenge/b/d;->c()I

    move-result v2

    .line 1
    iget-object v3, p1, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v3}, Lcom/wordloco/wordchallenge/b/d;->d()I

    move-result v3

    iget-object v4, p1, Lcom/wordloco/wordchallenge/view/Game;->c:Lcom/wordloco/wordchallenge/b/d;

    invoke-virtual {v4}, Lcom/wordloco/wordchallenge/b/d;->e()I

    move-result v4

    .line 35
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/view/Game;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/wordloco/wordchallenge/c/c;-><init>(IIIILandroid/content/Context;)V

    .line 33
    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/b;->c:Lcom/wordloco/wordchallenge/c/c;

    .line 36
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/b;->c:Lcom/wordloco/wordchallenge/c/c;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 37
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/b;->c:Lcom/wordloco/wordchallenge/c/c;

    return-object v0
.end method

.method public a(Lcom/wordloco/wordchallenge/c/c;)Lcom/wordloco/wordchallenge/c/d;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/wordloco/wordchallenge/c/d;

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/c;->d()I

    move-result v4

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/c;->e()I

    move-result v5

    .line 42
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v6

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/c;->g()I

    move-result v7

    move v3, v2

    .line 41
    invoke-direct/range {v0 .. v7}, Lcom/wordloco/wordchallenge/c/d;-><init>(ZIIIIII)V

    return-object v0
.end method

.method public a(Lcom/wordloco/wordchallenge/c/d;)V
    .locals 2

    .prologue
    .line 173
    iget v0, p0, Lcom/wordloco/wordchallenge/c/b;->b:I

    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/d;->b()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 174
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/wordloco/wordchallenge/c/d;->a(Z)V

    .line 176
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 139
    const-string v2, ""

    .line 140
    const-string v1, ""

    .line 141
    new-instance v0, Lcom/wordloco/wordchallenge/c/e;

    invoke-direct {v0}, Lcom/wordloco/wordchallenge/c/e;-><init>()V

    iput-object v0, p0, Lcom/wordloco/wordchallenge/c/b;->d:Lcom/wordloco/wordchallenge/c/e;

    move v3, v4

    .line 144
    :goto_0
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v3, v0, :cond_0

    .line 159
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 160
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 161
    new-instance v1, Landroid/text/SpannableString;

    const-string v3, "\n"

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 163
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 164
    aput-object v0, v3, v4

    aput-object v1, v3, v6

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 163
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "fonts/Poppins-Medium.ttf"

    .line 166
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 168
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 170
    return-void

    .line 145
    :cond_0
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    const-string v5, "NO_DATA_FOUND"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->m()I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 150
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 144
    :goto_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_0

    .line 152
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Lcom/wordloco/wordchallenge/c/c;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/wordloco/wordchallenge/c/d;)V
    .locals 13

    .prologue
    .line 48
    const/4 v1, 0x0

    iput v1, p0, Lcom/wordloco/wordchallenge/c/b;->b:I

    .line 50
    const-string v3, ""

    .line 51
    const-string v2, ""

    .line 52
    new-instance v1, Lcom/wordloco/wordchallenge/c/e;

    invoke-direct {v1}, Lcom/wordloco/wordchallenge/c/e;-><init>()V

    iput-object v1, p0, Lcom/wordloco/wordchallenge/c/b;->d:Lcom/wordloco/wordchallenge/c/e;

    .line 55
    const/4 v1, 0x0

    move v4, v1

    :goto_0
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_1

    .line 91
    new-instance v5, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v5, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    new-instance v4, Landroid/text/SpannedString;

    const-string v1, ""

    invoke-direct {v4, v1}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    .line 93
    new-instance v7, Landroid/text/SpannableString;

    const-string v1, "  "

    invoke-direct {v7, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 96
    const/4 v1, 0x0

    move-object v6, v5

    move-object v5, v4

    move v4, v1

    :goto_1
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v4, v1, :cond_7

    .line 114
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    .line 115
    const-string v3, ""

    .line 116
    const-string v2, ""

    .line 119
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/wordloco/wordchallenge/c/b;->b:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lcom/wordloco/wordchallenge/c/d;->b()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v2, Landroid/text/SpannableString;

    const-string v4, "\n"

    invoke-direct {v2, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    aput-object v1, v4, v7

    const/4 v1, 0x1

    aput-object v6, v4, v1

    const/4 v1, 0x2

    .line 125
    aput-object v2, v4, v1

    const/4 v1, 0x3

    aput-object v3, v4, v1

    const/4 v1, 0x4

    aput-object v5, v4, v1

    .line 124
    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "fonts/Poppins-Medium.ttf"

    .line 127
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 129
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 130
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 132
    const/4 v1, 0x1

    sput v1, Lcom/wordloco/wordchallenge/c/b;->a:I

    .line 134
    invoke-virtual/range {p5 .. p5}, Lcom/wordloco/wordchallenge/c/d;->c()I

    move-result v1

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/wordloco/wordchallenge/c/d;->g(I)V

    .line 136
    return-void

    .line 56
    :cond_1
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    const-string v5, "NO_DATA_FOUND"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 57
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v1

    if-nez v1, :cond_6

    .line 58
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 59
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->m()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_3

    .line 61
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/wordloco/wordchallenge/c/b;->d:Lcom/wordloco/wordchallenge/c/e;

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 64
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    .line 66
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0x5f

    .line 63
    invoke-virtual {v3, v6, v1, v7}, Lcom/wordloco/wordchallenge/c/e;->a(CIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 66
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 55
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 69
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 70
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    .line 72
    goto :goto_2

    .line 74
    :cond_3
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->f()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 75
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    iget-object v2, p0, Lcom/wordloco/wordchallenge/c/b;->d:Lcom/wordloco/wordchallenge/c/e;

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 77
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 78
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    .line 79
    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v7, 0x5f

    .line 76
    invoke-virtual {v2, v6, v1, v7}, Lcom/wordloco/wordchallenge/c/e;->a(CIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 79
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 80
    goto/16 :goto_2

    .line 81
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 85
    goto/16 :goto_2

    .line 86
    :cond_5
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/wordloco/wordchallenge/c/j;->a(Z)V

    :cond_6
    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_2

    .line 97
    :cond_7
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    const-string v8, "NO_DATA_FOUND"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 98
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 99
    iget v1, p0, Lcom/wordloco/wordchallenge/c/b;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/wordloco/wordchallenge/c/b;->b:I

    .line 100
    new-instance v8, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    .line 101
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->k()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-direct {v8, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 102
    new-instance v1, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v1}, Landroid/text/style/StrikethroughSpan;-><init>()V

    const/4 v9, 0x0

    invoke-virtual {v8}, Landroid/text/SpannableString;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v8, v1, v9, v10, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 103
    invoke-virtual {p2}, Lcom/wordloco/wordchallenge/c/c;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wordloco/wordchallenge/c/j;

    invoke-virtual {v1}, Lcom/wordloco/wordchallenge/c/j;->m()I

    move-result v1

    const/4 v9, 0x1

    if-ne v1, v9, :cond_9

    .line 104
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    .line 105
    aput-object v6, v1, v9

    const/4 v6, 0x1

    aput-object v8, v1, v6

    const/4 v6, 0x2

    aput-object v7, v1, v6

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannedString;

    move-object v6, v1

    .line 96
    :cond_8
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 107
    :cond_9
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v9, 0x0

    .line 108
    aput-object v5, v1, v9

    const/4 v5, 0x1

    aput-object v8, v1, v5

    const/4 v5, 0x2

    aput-object v7, v1, v5

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/SpannedString;

    move-object v5, v1

    .line 107
    goto :goto_3
.end method
