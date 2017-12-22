.class public Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;
.super Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;
.source "LoadingLolomoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static sRandom:Ljava/util/Random;


# instance fields
.field private final mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/BaseVerticalRecyclerViewAdapter$BaseRowLomoViewHolder;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 80
    sget v0, Lcom/netflix/android/widgetry/R$id;->lomo_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->mTitle:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->mTitle:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->generateFakeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, p0, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcom/netflix/android/widgetry/lolomo/RowConfig;->lightTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/netflix/android/widgetry/R$color;->lolomo_row_light_placeholder:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 83
    return-void

    .line 82
    :cond_0
    sget v0, Lcom/netflix/android/widgetry/R$color;->lolomo_row_dark_placeholder:I

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;ILcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$1;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;-><init>(Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    return-void
.end method

.method private generateFakeString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, ".........."

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/netflix/android/widgetry/lolomo/LoadingLolomoAdapter$LoadingRowViewHolderRow;->sRandom:Ljava/util/Random;

    const/16 v3, 0x14

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 88
    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
