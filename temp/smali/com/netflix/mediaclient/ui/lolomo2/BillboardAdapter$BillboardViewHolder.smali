.class Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;
.super Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;
.source "BillboardAdapter.java"


# instance fields
.field final billboardView:Lcom/netflix/mediaclient/ui/lomo/BillboardView;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V
    .locals 1

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/lolomo/BaseRowAdapter$ItemViewHolder;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Lcom/netflix/android/widgetry/lolomo/RowConfig;I)V

    .line 101
    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lolomo2/BillboardAdapter$BillboardViewHolder;->billboardView:Lcom/netflix/mediaclient/ui/lomo/BillboardView;

    .line 102
    return-void
.end method
