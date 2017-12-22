.class final Lcom/viewpagerindicator/android/osp/ViewPager$SavedState$1;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/os/ParcelableCompatCreatorCallbacks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/support/v4/os/ParcelableCompatCreatorCallbacks",
        "<",
        "Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;
    .locals 1

    .prologue
    .line 1233
    new-instance v0, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    invoke-direct {v0, p1, p2}, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0, p1, p2}, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;
    .locals 1

    .prologue
    .line 1237
    new-array v0, p1, [Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1230
    invoke-virtual {p0, p1}, Lcom/viewpagerindicator/android/osp/ViewPager$SavedState$1;->newArray(I)[Lcom/viewpagerindicator/android/osp/ViewPager$SavedState;

    move-result-object v0

    return-object v0
.end method
