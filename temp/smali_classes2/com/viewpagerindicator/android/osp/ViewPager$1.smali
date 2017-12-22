.class final Lcom/viewpagerindicator/android/osp/ViewPager$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;)I
    .locals 2

    .prologue
    .line 122
    iget v0, p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    iget v1, p2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;->position:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 119
    check-cast p1, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    check-cast p2, Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/android/osp/ViewPager$1;->compare(Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;Lcom/viewpagerindicator/android/osp/ViewPager$ItemInfo;)I

    move-result v0

    return v0
.end method
