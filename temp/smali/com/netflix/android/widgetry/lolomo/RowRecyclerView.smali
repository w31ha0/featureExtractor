.class public Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;
.super Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;
.source "RowRecyclerView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RowRecyclerView"


# instance fields
.field private mTrackingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;)V

    .line 23
    const-string/jumbo v0, "RowRecyclerView"

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->mTrackingName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    const-string/jumbo v0, "RowRecyclerView"

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->mTrackingName:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-string/jumbo v0, "RowRecyclerView"

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->mTrackingName:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method protected getTrackingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->mTrackingName:Ljava/lang/String;

    return-object v0
.end method

.method public setTrackingName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/RowRecyclerView;->mTrackingName:Ljava/lang/String;

    .line 39
    return-void
.end method
