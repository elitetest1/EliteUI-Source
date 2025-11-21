.class public Landroid/service/notification/ZenModeDiff$FieldDiff;
.super Ljava/lang/Object;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldDiff"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final blacklist mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

.field private final blacklist mFrom:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mTo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    iput-object p2, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/service/notification/ZenModeDiff$BaseDiff;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;",
            "Landroid/service/notification/ZenModeDiff$BaseDiff;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    iput-object p2, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    iput-object p3, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    return-void
.end method


# virtual methods
.method public blacklist from()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    return-object p0
.end method

.method public blacklist hasDiff()Z
    .locals 1

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$BaseDiff;->hasDiff()Z

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public blacklist to()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mDetailedDiff:Landroid/service/notification/ZenModeDiff$BaseDiff;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/ZenModeDiff$BaseDiff;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mFrom:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/service/notification/ZenModeDiff$FieldDiff;->mTo:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
