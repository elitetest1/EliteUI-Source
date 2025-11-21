.class public Lcom/android/internal/widget/remotecompose/core/operations/layout/modifiers/ShapeType;
.super Ljava/lang/Object;
.source "ShapeType.java"


# static fields
.field public static final blacklist CIRCLE:I = 0x1

.field public static final blacklist RECTANGLE:I = 0x0

.field public static final blacklist ROUNDED_RECTANGLE:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INVALID_SHAPE_TYPE["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "ROUNDED_RECTANGLE"

    return-object p0

    :cond_1
    const-string p0, "CIRCLE"

    return-object p0

    :cond_2
    const-string p0, "RECTANGLE"

    return-object p0
.end method
