.class Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper;
.super Ljava/lang/Object;
.source "LolomoRecyclerViewFrag_Ab7814.java"


# static fields
.field private static final sBillboardOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper;->sBillboardOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBillboardOnScrollListener()Landroid/support/v7/widget/RecyclerView$OnScrollListener;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/netflix/mediaclient/ui/lolomo2/LolomoRecyclerViewFrag_Ab7814$BillboardScrollHelper;->sBillboardOnScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method
