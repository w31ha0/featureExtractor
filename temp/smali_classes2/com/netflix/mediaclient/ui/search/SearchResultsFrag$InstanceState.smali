.class Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;
.super Ljava/lang/Object;
.source "SearchResultsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)V
    .locals 0

    .prologue
    .line 1027
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private restoreClickHistory(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 1097
    if-nez p1, :cond_1

    .line 1117
    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    const-string/jumbo v0, "instance_state__click_history"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const-string/jumbo v0, "instance_state__click_history"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 1104
    if-eqz v2, :cond_0

    array-length v0, v2

    if-eqz v0, :cond_0

    .line 1108
    new-instance v3, Ljava/util/ArrayList;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1109
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v0, v2, v1

    .line 1110
    check-cast v0, Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1113
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/Stack;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private restoreGridViewPositions(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1036
    if-nez p1, :cond_0

    .line 1042
    :goto_0
    return-void

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    const-string/jumbo v1, "instance_state_suggestions_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreGridViewPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/StaticGridView;Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v0

    const-string/jumbo v1, "instance_state_people_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreGridViewPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/StaticGridView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreGridViewPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/StaticGridView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1120
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1146
    :cond_0
    :goto_0
    return-void

    .line 1124
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1125
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1127
    if-eq v0, v1, :cond_0

    .line 1128
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 1129
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1602(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    .line 1133
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;

    invoke-direct {v2, p0, p2, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$2;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;Lcom/netflix/mediaclient/android/widget/StaticGridView;I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1130
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1200(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/StaticGridView;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 1131
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1702(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    goto :goto_1
.end method

.method private restoreLayoutPositions(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1045
    if-nez p1, :cond_0

    .line 1051
    :goto_0
    return-void

    .line 1049
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v0

    const-string/jumbo v1, "instance_state_suggestions_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreLayoutPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/FlowLayout;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v0

    const-string/jumbo v1, "instance_state_people_selected_pos"

    invoke-direct {p0, p1, v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreLayoutPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/FlowLayout;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private restoreLayoutPositions(Landroid/os/Bundle;Lcom/netflix/mediaclient/android/widget/FlowLayout;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 1057
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1084
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1064
    if-eq v0, v1, :cond_0

    .line 1065
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1500(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v1

    if-ne p2, v1, :cond_3

    .line 1066
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1602(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    .line 1070
    :cond_2
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;

    invoke-direct {v2, p0, p2, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState$1;-><init>(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;Lcom/netflix/mediaclient/android/widget/FlowLayout;I)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1067
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1400(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Lcom/netflix/mediaclient/android/widget/FlowLayout;

    move-result-object v1

    if-ne p2, v1, :cond_2

    .line 1068
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1702(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;I)I

    goto :goto_1
.end method

.method private restoreQuery(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1087
    if-nez p1, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    const-string/jumbo v0, "instance_state_query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    const-string/jumbo v1, "instance_state_query"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$302(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method

.method private saveClickHistoryState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1800(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    new-array v1, v1, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/search/SearchItemClick;

    .line 1163
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 1164
    const-string/jumbo v1, "instance_state__click_history"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1167
    :cond_0
    return-void
.end method

.method private saveGridViewState(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1171
    const-string/jumbo v0, "instance_state_people_selected_pos"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1600(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1700(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 1175
    const-string/jumbo v0, "instance_state_suggestions_selected_pos"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$1700(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1177
    :cond_1
    return-void
.end method

.method private saveQueryState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const-string/jumbo v0, "instance_state_query"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->this$0:Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;->access$300(Lcom/netflix/mediaclient/ui/search/SearchResultsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    :cond_0
    return-void
.end method


# virtual methods
.method restore(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1029
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreGridViewPositions(Landroid/os/Bundle;)V

    .line 1030
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreLayoutPositions(Landroid/os/Bundle;)V

    .line 1031
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreClickHistory(Landroid/os/Bundle;)V

    .line 1032
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->restoreQuery(Landroid/os/Bundle;)V

    .line 1033
    return-void
.end method

.method save(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1149
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->saveGridViewState(Landroid/os/Bundle;)V

    .line 1150
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->saveClickHistoryState(Landroid/os/Bundle;)V

    .line 1151
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/search/SearchResultsFrag$InstanceState;->saveQueryState(Landroid/os/Bundle;)V

    .line 1152
    return-void
.end method
