.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/Component$Visibility;
.super Ljava/lang/Object;
.source "Component.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/operations/layout/Component;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Visibility"
.end annotation


# static fields
.field public static final blacklist CLEAR_OVERRIDE:I = 0x80

.field public static final blacklist GONE:I = 0x0

.field public static final blacklist INVISIBLE:I = 0x2

.field public static final blacklist OVERRIDE_GONE:I = 0x10

.field public static final blacklist OVERRIDE_INVISIBLE:I = 0x40

.field public static final blacklist OVERRIDE_VISIBLE:I = 0x20

.field public static final blacklist VISIBLE:I = 0x1


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add(II)I
    .locals 1

    and-int/lit8 p0, p0, 0xf

    add-int/2addr p0, p1

    and-int/lit16 p1, p0, 0x80

    const/16 v0, 0x80

    if-ne p1, v0, :cond_0

    and-int/lit8 p0, p0, 0xf

    :cond_0
    return p0
.end method

.method public static blacklist clearOverride(I)I
    .locals 0

    and-int/lit8 p0, p0, 0xf

    return p0
.end method

.method public static blacklist hasOverride(I)Z
    .locals 0

    shr-int/lit8 p0, p0, 0x4

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static blacklist isGone(I)Z
    .locals 3

    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/16 v0, 0x10

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    if-nez p0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static blacklist isInvisible(I)Z
    .locals 3

    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public static blacklist isVisible(I)Z
    .locals 3

    shr-int/lit8 v0, p0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_1

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static blacklist toString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    shr-int/lit8 v0, p0, 0x4

    if-lez v0, :cond_2

    and-int/lit8 v0, p0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const-string p0, "OVERRIDE_GONE"

    return-object p0

    :cond_0
    and-int/lit8 v0, p0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    const-string p0, "OVERRIDE_VISIBLE"

    return-object p0

    :cond_1
    and-int/lit8 v0, p0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_2

    const-string p0, "OVERRIDE_INVISIBLE"

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, "INVISIBLE"

    return-object p0

    :cond_4
    const-string p0, "VISIBLE"

    return-object p0

    :cond_5
    const-string p0, "GONE"

    return-object p0
.end method
