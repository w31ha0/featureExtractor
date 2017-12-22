.class public Lcom/netflix/mediaclient/android/widget/IconFontTextView;
.super Landroid/widget/TextView;
.source "IconFontTextView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconFontTextView"

.field private static iconTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->init()V

    .line 33
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->iconTypeface:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "nf-icon.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->iconTypeface:Landroid/graphics/Typeface;

    .line 39
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->iconTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 40
    return-void
.end method


# virtual methods
.method public setToIcon(Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;I)V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 48
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->getUnicodeChar()Ljava/lang/Character;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setTextSize(F)V

    .line 50
    return-void
.end method
