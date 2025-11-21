.class abstract Landroid/service/notification/ZenModeDiff$BaseDiff;
.super Ljava/lang/Object;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BaseDiff"
.end annotation


# instance fields
.field private blacklist mExists:I

.field private blacklist mFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$FieldDiff;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    :cond_1
    return-void
.end method


# virtual methods
.method final blacklist addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V
    .locals 0

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final blacklist fieldNamesWithDiff()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final blacklist getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;
    .locals 1

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/LinkedHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    return-object p0
.end method

.method public abstract blacklist hasDiff()Z
.end method

.method public final blacklist hasExistenceChange()Z
    .locals 0

    iget p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final blacklist hasFieldDiffs()Z
    .locals 0

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public abstract whitelist test-api toString()Ljava/lang/String;
.end method

.method public final blacklist wasAdded()Z
    .locals 1

    iget p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final blacklist wasRemoved()Z
    .locals 1

    iget p0, p0, Landroid/service/notification/ZenModeDiff$BaseDiff;->mExists:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
