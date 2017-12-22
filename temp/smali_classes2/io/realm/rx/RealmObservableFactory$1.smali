.class Lio/realm/rx/RealmObservableFactory$1;
.super Ljava/lang/ThreadLocal;
.source "RealmObservableFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter",
        "<",
        "Lio/realm/RealmResults;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/rx/RealmObservableFactory;


# direct methods
.method constructor <init>(Lio/realm/rx/RealmObservableFactory;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lio/realm/rx/RealmObservableFactory$1;->this$0:Lio/realm/rx/RealmObservableFactory;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter",
            "<",
            "Lio/realm/RealmResults;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;-><init>(Lio/realm/rx/RealmObservableFactory$1;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lio/realm/rx/RealmObservableFactory$1;->initialValue()Lio/realm/rx/RealmObservableFactory$StrongReferenceCounter;

    move-result-object v0

    return-object v0
.end method
