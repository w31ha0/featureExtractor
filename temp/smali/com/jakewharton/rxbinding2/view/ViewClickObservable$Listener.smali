.class final Lcom/jakewharton/rxbinding2/view/ViewClickObservable$Listener;
.super Lio/reactivex/android/MainThreadDisposable;
.source "ViewClickObservable.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final observer:Lio/reactivex/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lio/reactivex/Observer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/reactivex/Observer",
            "<-",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lio/reactivex/android/MainThreadDisposable;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/jakewharton/rxbinding2/view/ViewClickObservable$Listener;->view:Landroid/view/View;

    .line 34
    iput-object p2, p0, Lcom/jakewharton/rxbinding2/view/ViewClickObservable$Listener;->observer:Lio/reactivex/Observer;

    .line 35
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding2/view/ViewClickObservable$Listener;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/ViewClickObservable$Listener;->observer:Lio/reactivex/Observer;

    sget-object v1, Lcom/jakewharton/rxbinding2/internal/Notification;->INSTANCE:Lcom/jakewharton/rxbinding2/internal/Notification;

    invoke-interface {v0, v1}, Lio/reactivex/Observer;->onNext(Ljava/lang/Object;)V

    .line 41
    :cond_0
    return-void
.end method

.method protected onDispose()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/jakewharton/rxbinding2/view/ViewClickObservable$Listener;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
