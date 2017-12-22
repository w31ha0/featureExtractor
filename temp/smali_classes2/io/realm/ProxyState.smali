.class public final Lio/realm/ProxyState;
.super Ljava/lang/Object;
.source "ProxyState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Lio/realm/RealmModel;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private acceptDefaultValue:Z

.field protected currentTableVersion:J

.field private excludeFields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lio/realm/RealmChangeListener",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private model:Lio/realm/RealmModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private realm:Lio/realm/BaseRealm;

.field private row:Lio/realm/internal/Row;

.field private underConstruction:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 45
    return-void
.end method

.method public constructor <init>(Lio/realm/RealmModel;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 48
    iput-object p1, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lio/realm/ProxyState;)Lio/realm/internal/Row;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method static synthetic access$100(Lio/realm/ProxyState;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lio/realm/ProxyState;->notifyChangeListeners()V

    return-void
.end method

.method private notifyChangeListeners()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/RealmChangeListener;

    .line 89
    iget-object v2, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v2, v2, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v2}, Lio/realm/internal/SharedRealm;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    :cond_0
    return-void

    .line 92
    :cond_1
    iget-object v2, p0, Lio/realm/ProxyState;->model:Lio/realm/RealmModel;

    invoke-interface {v0, v2}, Lio/realm/RealmChangeListener;->onChange(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private registerToRealmNotifier()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    invoke-virtual {v0}, Lio/realm/internal/SharedRealm;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    new-instance v1, Lio/realm/ProxyState$1;

    invoke-direct {v1, p0}, Lio/realm/ProxyState$1;-><init>(Lio/realm/ProxyState;)V

    invoke-virtual {v0, p0, v1}, Lio/realm/internal/RealmNotifier;->addChangeListener(Ljava/lang/Object;Lio/realm/RealmChangeListener;)V

    goto :goto_0
.end method


# virtual methods
.method public addChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0}, Lio/realm/ProxyState;->registerToRealmNotifier()V

    .line 105
    :cond_1
    return-void
.end method

.method public getAcceptDefaultValue$realm()Z
    .locals 1

    .prologue
    .line 68
    iget-boolean v0, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    return v0
.end method

.method public getExcludeFields$realm()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    return-object v0
.end method

.method public getRealm$realm()Lio/realm/BaseRealm;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    return-object v0
.end method

.method public getRow$realm()Lio/realm/internal/Row;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/PendingRow;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderConstruction()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    return v0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/PendingRow;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    check-cast v0, Lio/realm/internal/PendingRow;

    invoke-virtual {v0}, Lio/realm/internal/PendingRow;->executeQuery()Lio/realm/internal/Row;

    move-result-object v0

    iput-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    .line 165
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/InvalidRow;

    if-nez v0, :cond_0

    .line 166
    invoke-direct {p0}, Lio/realm/ProxyState;->registerToRealmNotifier()V

    .line 168
    :cond_0
    invoke-direct {p0}, Lio/realm/ProxyState;->notifyChangeListeners()V

    .line 170
    :cond_1
    return-void
.end method

.method public removeAllChangeListeners()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 116
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0}, Lio/realm/internal/RealmNotifier;->removeChangeListeners(Ljava/lang/Object;)V

    .line 119
    :cond_0
    return-void
.end method

.method public removeChangeListener(Lio/realm/RealmChangeListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/realm/RealmChangeListener",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lio/realm/ProxyState;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    instance-of v0, v0, Lio/realm/internal/UncheckedRow;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    iget-object v0, v0, Lio/realm/BaseRealm;->sharedRealm:Lio/realm/internal/SharedRealm;

    iget-object v0, v0, Lio/realm/internal/SharedRealm;->realmNotifier:Lio/realm/internal/RealmNotifier;

    invoke-virtual {v0, p0}, Lio/realm/internal/RealmNotifier;->removeChangeListeners(Ljava/lang/Object;)V

    .line 112
    :cond_0
    return-void
.end method

.method public setAcceptDefaultValue$realm(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lio/realm/ProxyState;->acceptDefaultValue:Z

    .line 73
    return-void
.end method

.method public setConstructionFinished()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/realm/ProxyState;->underConstruction:Z

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    .line 135
    return-void
.end method

.method public setExcludeFields$realm(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    iput-object p1, p0, Lio/realm/ProxyState;->excludeFields:Ljava/util/List;

    .line 81
    return-void
.end method

.method public setRealm$realm(Lio/realm/BaseRealm;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lio/realm/ProxyState;->realm:Lio/realm/BaseRealm;

    .line 57
    return-void
.end method

.method public setRow$realm(Lio/realm/internal/Row;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    .line 65
    return-void
.end method

.method public setTableVersion$realm()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lio/realm/ProxyState;->row:Lio/realm/internal/Row;

    invoke-interface {v0}, Lio/realm/internal/Row;->getTable()Lio/realm/internal/Table;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/internal/Table;->getVersion()J

    move-result-wide v0

    iput-wide v0, p0, Lio/realm/ProxyState;->currentTableVersion:J

    .line 125
    :cond_0
    return-void
.end method
