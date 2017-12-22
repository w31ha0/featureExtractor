.class Lio/realm/ProxyState$1;
.super Ljava/lang/Object;
.source "ProxyState.java"

# interfaces
.implements Lio/realm/RealmChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/realm/RealmChangeListener",
        "<",
        "Lio/realm/ProxyState",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/realm/ProxyState;


# direct methods
.method constructor <init>(Lio/realm/ProxyState;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lio/realm/ProxyState$1;->this$0:Lio/realm/ProxyState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lio/realm/ProxyState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/ProxyState",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 145
    const-wide/16 v0, -0x1

    .line 146
    iget-object v2, p0, Lio/realm/ProxyState$1;->this$0:Lio/realm/ProxyState;

    invoke-static {v2}, Lio/realm/ProxyState;->access$000(Lio/realm/ProxyState;)Lio/realm/internal/Row;

    move-result-object v2

    invoke-interface {v2}, Lio/realm/internal/Row;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v0, p0, Lio/realm/ProxyState$1;->this$0:Lio/realm/ProxyState;

    invoke-static {v0}, Lio/realm/ProxyState;->access$000(Lio/realm/ProxyState;)Lio/realm/internal/Row;

    move-result-object v0

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getVersion()J

    move-result-wide v0

    .line 150
    :cond_0
    iget-object v2, p0, Lio/realm/ProxyState$1;->this$0:Lio/realm/ProxyState;

    iget-wide v2, v2, Lio/realm/ProxyState;->currentTableVersion:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 151
    iget-object v2, p0, Lio/realm/ProxyState$1;->this$0:Lio/realm/ProxyState;

    iput-wide v0, v2, Lio/realm/ProxyState;->currentTableVersion:J

    .line 152
    iget-object v0, p0, Lio/realm/ProxyState$1;->this$0:Lio/realm/ProxyState;

    invoke-static {v0}, Lio/realm/ProxyState;->access$100(Lio/realm/ProxyState;)V

    .line 154
    :cond_1
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Lio/realm/ProxyState;

    invoke-virtual {p0, p1}, Lio/realm/ProxyState$1;->onChange(Lio/realm/ProxyState;)V

    return-void
.end method
