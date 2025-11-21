.class public Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;
.super Ljava/lang/Object;
.source "ForegroundServiceTypePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ForegroundServiceTypePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForegroundServiceTypePermissions"
.end annotation


# instance fields
.field final blacklist mAllOf:Z

.field final blacklist mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;


# direct methods
.method public constructor blacklist <init>([Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    iput-boolean p2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    return-void
.end method


# virtual methods
.method public blacklist checkPermissions(Landroid/content/Context;IILjava/lang/String;Z)I
    .locals 10

    iget-boolean v0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v0, p0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p0, v3

    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    invoke-virtual/range {v4 .. v9}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move-object p1, v5

    move p2, v6

    move p3, v7

    move-object p4, v8

    move p5, v9

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    move-object v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move v9, p5

    iget-object p0, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length p1, p0

    move p2, v2

    :goto_1
    if-ge p2, p1, :cond_4

    aget-object v4, p0, p2

    invoke-virtual/range {v4 .. v9}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->checkPermission(Landroid/content/Context;IILjava/lang/String;Z)I

    move-result p3

    if-nez p3, :cond_3

    return v2

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "allOf="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mAllOf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method blacklist toStringArray(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermissions;->mPermissions:[Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, v0}, Landroid/app/ForegroundServiceTypePolicy$ForegroundServiceTypePermission;->addToList(Landroid/content/Context;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method
