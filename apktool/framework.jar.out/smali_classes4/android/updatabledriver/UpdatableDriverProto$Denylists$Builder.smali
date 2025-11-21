.class public final Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
.super Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;
.source "UpdatableDriverProto.java"

# interfaces
.implements Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/updatabledriver/UpdatableDriverProto$Denylists;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/framework/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists;",
        "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;",
        ">;",
        "Landroid/updatabledriver/UpdatableDriverProto$DenylistsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    invoke-static {}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$900()Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/framework/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/updatabledriver/UpdatableDriverProto$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllDenylists(Ljava/lang/Iterable;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;)",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1300(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist addDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1200(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist addDenylists(Landroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1100(Landroid/updatabledriver/UpdatableDriverProto$Denylists;Landroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist clearDenylists()Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1400(Landroid/updatabledriver/UpdatableDriverProto$Denylists;)V

    return-object p0
.end method

.method public blacklist getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;
    .locals 0

    iget-object p0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getDenylistsCount()I
    .locals 0

    iget-object p0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsCount()I

    move-result p0

    return p0
.end method

.method public blacklist getDenylistsList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/updatabledriver/UpdatableDriverProto$Denylist;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->getDenylistsList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public blacklist removeDenylists(I)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1500(Landroid/updatabledriver/UpdatableDriverProto$Denylists;I)V

    return-object p0
.end method

.method public blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-virtual {p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylist$Builder;->build()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/updatabledriver/UpdatableDriverProto$Denylist;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method

.method public blacklist setDenylists(ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;
    .locals 1

    invoke-virtual {p0}, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->copyOnWrite()V

    iget-object v0, p0, Landroid/updatabledriver/UpdatableDriverProto$Denylists$Builder;->instance:Lcom/android/framework/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/updatabledriver/UpdatableDriverProto$Denylists;

    invoke-static {v0, p1, p2}, Landroid/updatabledriver/UpdatableDriverProto$Denylists;->access$1000(Landroid/updatabledriver/UpdatableDriverProto$Denylists;ILandroid/updatabledriver/UpdatableDriverProto$Denylist;)V

    return-object p0
.end method
