.class public final Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;
.super Ljava/lang/Object;
.source "MarshalQueryablePrimitive.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/MarshalQueryable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/hardware/camera2/marshal/MarshalQueryable<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;

    invoke-direct {v0, p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive$MarshalerPrimitive;-><init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryablePrimitive;Landroid/hardware/camera2/utils/TypeReference;I)V

    return-object v0
.end method

.method public blacklist isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Class;

    const/4 v0, 0x0

    if-eqz p0, :cond_f

    invoke-virtual {p1}, Landroid/hardware/camera2/utils/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;

    sget-object p1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    if-eq p0, p1, :cond_e

    const-class p1, Ljava/lang/Byte;

    if-ne p0, p1, :cond_0

    goto :goto_4

    :cond_0
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_c

    const-class p1, Ljava/lang/Integer;

    if-ne p0, p1, :cond_1

    goto :goto_3

    :cond_1
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_a

    const-class p1, Ljava/lang/Float;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_8

    const-class p1, Ljava/lang/Long;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, p1, :cond_6

    const-class p1, Ljava/lang/Double;

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    const-class p1, Landroid/util/Rational;

    if-ne p0, p1, :cond_f

    const/4 p0, 0x5

    if-ne p2, p0, :cond_5

    return v1

    :cond_5
    return v0

    :cond_6
    :goto_0
    const/4 p0, 0x4

    if-ne p2, p0, :cond_7

    return v1

    :cond_7
    return v0

    :cond_8
    :goto_1
    const/4 p0, 0x3

    if-ne p2, p0, :cond_9

    return v1

    :cond_9
    return v0

    :cond_a
    :goto_2
    const/4 p0, 0x2

    if-ne p2, p0, :cond_b

    return v1

    :cond_b
    return v0

    :cond_c
    :goto_3
    if-ne p2, v1, :cond_d

    return v1

    :cond_d
    return v0

    :cond_e
    :goto_4
    if-nez p2, :cond_f

    return v1

    :cond_f
    return v0
.end method
