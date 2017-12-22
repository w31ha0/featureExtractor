.class public Lcom/netflix/mediaclient/util/InternalLinkify;
.super Ljava/lang/Object;
.source "InternalLinkify.java"


# static fields
.field public static final sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/netflix/mediaclient/util/InternalLinkify$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/InternalLinkify$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/util/InternalLinkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 139
    :cond_1
    return-void
.end method

.method public static final addWebLinks(Landroid/text/Spannable;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/style/URLSpan;

    invoke-interface {p0, v6, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/URLSpan;

    .line 72
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    .line 73
    aget-object v2, v0, v1

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 72
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const-string/jumbo v1, "http://"

    aput-object v1, v3, v6

    const-string/jumbo v1, "https://"

    aput-object v1, v3, v7

    sget-object v4, Lcom/netflix/mediaclient/util/InternalLinkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/util/InternalLinkify;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 82
    invoke-static {v0}, Lcom/netflix/mediaclient/util/InternalLinkify;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move v0, v6

    .line 92
    :goto_1
    return v0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/LinkSpec;

    .line 89
    iget-object v2, v0, Lcom/netflix/mediaclient/util/LinkSpec;->url:Ljava/lang/String;

    iget v3, v0, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    iget v0, v0, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    invoke-static {v2, v3, v0, p0}, Lcom/netflix/mediaclient/util/InternalLinkify;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    :cond_2
    move v0, v7

    .line 92
    goto :goto_1
.end method

.method public static final addWebLinks(Landroid/widget/TextView;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    instance-of v3, v0, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 111
    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/InternalLinkify;->addWebLinks(Landroid/text/Spannable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-static {p0}, Lcom/netflix/mediaclient/util/InternalLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v0, v1

    .line 127
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    .line 118
    :cond_1
    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/netflix/mediaclient/util/InternalLinkify;->addWebLinks(Landroid/text/Spannable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 121
    invoke-static {p0}, Lcom/netflix/mediaclient/util/InternalLinkify;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 124
    goto :goto_0

    :cond_2
    move v0, v2

    .line 127
    goto :goto_0
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2

    .prologue
    .line 143
    new-instance v0, Lcom/netflix/mediaclient/android/widget/InternalURLSpan;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/android/widget/InternalURLSpan;-><init>(Ljava/lang/String;)V

    .line 144
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 145
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 182
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 183
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 184
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    .line 186
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v1, v2}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    :cond_1
    new-instance v3, Lcom/netflix/mediaclient/util/LinkSpec;

    invoke-direct {v3}, Lcom/netflix/mediaclient/util/LinkSpec;-><init>()V

    .line 188
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3, v0, p5}, Lcom/netflix/mediaclient/util/InternalLinkify;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 190
    iput-object v4, v3, Lcom/netflix/mediaclient/util/LinkSpec;->url:Ljava/lang/String;

    .line 191
    iput v1, v3, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    .line 192
    iput v2, v3, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    .line 194
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 197
    :cond_2
    return-void
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    if-eqz p3, :cond_4

    .line 150
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v9, v2

    .line 155
    :goto_1
    array-length v3, p1

    if-ge v9, v3, :cond_3

    .line 156
    aget-object v3, p1, v9

    aget-object v4, p1, v9

    .line 157
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    .line 156
    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 161
    aget-object v6, p1, v9

    aget-object v3, p1, v9

    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    move-object v3, v0

    move v4, v2

    move v5, v2

    move v7, v2

    .line 161
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p1, v9

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v9

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    :goto_2
    if-nez v1, :cond_1

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    :cond_1
    return-object v0

    .line 155
    :cond_2
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    move-object v0, p0

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/netflix/mediaclient/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 200
    new-instance v0, Lcom/netflix/mediaclient/util/InternalLinkify$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/InternalLinkify$2;-><init>()V

    .line 228
    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 230
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 231
    const/4 v2, 0x0

    move v4, v0

    .line 233
    :goto_0
    add-int/lit8 v0, v4, -0x1

    if-ge v2, v0, :cond_3

    .line 234
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/LinkSpec;

    .line 235
    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/util/LinkSpec;

    .line 238
    iget v5, v0, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    iget v6, v1, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    if-gt v5, v6, :cond_2

    iget v5, v0, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v6, v1, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    if-le v5, v6, :cond_2

    .line 239
    iget v5, v1, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v6, v0, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    if-gt v5, v6, :cond_0

    .line 240
    add-int/lit8 v0, v2, 0x1

    .line 247
    :goto_1
    if-eq v0, v3, :cond_2

    .line 248
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 249
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    .line 250
    goto :goto_0

    .line 241
    :cond_0
    iget v5, v0, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v6, v0, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    sub-int/2addr v5, v6

    iget v6, v1, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v7, v1, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_1

    .line 242
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 243
    :cond_1
    iget v5, v0, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v0, v0, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    sub-int v0, v5, v0

    iget v5, v1, Lcom/netflix/mediaclient/util/LinkSpec;->end:I

    iget v1, v1, Lcom/netflix/mediaclient/util/LinkSpec;->start:I

    sub-int v1, v5, v1

    if-ge v0, v1, :cond_4

    move v0, v2

    .line 244
    goto :goto_1

    .line 255
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 256
    goto :goto_0

    .line 257
    :cond_3
    return-void

    :cond_4
    move v0, v3

    goto :goto_1
.end method
