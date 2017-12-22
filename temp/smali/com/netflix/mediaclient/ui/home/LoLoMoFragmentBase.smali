.class public abstract Lcom/netflix/mediaclient/ui/home/LoLoMoFragmentBase;
.super Lcom/netflix/mediaclient/android/fragment/NetflixFrag;
.source "LoLoMoFragmentBase.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# static fields
.field protected static final EXTRA_GENRE_PARCEL:Ljava/lang/String; = "genre_parcel"

.field protected static final EXTRA_IS_GENRE_LIST:Ljava/lang/String; = "is_genre_list"

.field protected static final EXTRA_LIST_ID:Ljava/lang/String; = "list_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.end method

.method public abstract refresh()V
.end method
