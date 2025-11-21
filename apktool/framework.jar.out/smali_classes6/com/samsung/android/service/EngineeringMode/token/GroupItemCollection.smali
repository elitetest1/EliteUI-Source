.class public Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;
.super Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;
.source "GroupItemCollection.java"


# instance fields
.field private blacklist mGroupItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/GroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/service/EngineeringMode/token/GroupItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->setMagicString(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public blacklist addAttrToGroupItem(III[B)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->getIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->pushAttribute(II[B)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist addGroupItemCollection(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist getGroupItem(I)Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    return-object p0
.end method

.method public blacklist getGroupItemByIndex(I)Lcom/samsung/android/service/EngineeringMode/token/GroupItem;
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;

    invoke-virtual {v0}, Lcom/samsung/android/service/EngineeringMode/token/GroupItem;->getIndex()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getItemsNum()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/EngineeringMode/token/GroupItemCollection;->mGroupItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic blacklist getMagicString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->getMagicString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic blacklist setMagicString(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/android/service/EngineeringMode/token/InfoCollection;->setMagicString(Ljava/lang/String;)V

    return-void
.end method
