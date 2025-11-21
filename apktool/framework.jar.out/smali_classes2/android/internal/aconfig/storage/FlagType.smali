.class public final enum Landroid/internal/aconfig/storage/FlagType;
.super Ljava/lang/Enum;
.source "FlagType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/internal/aconfig/storage/FlagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/internal/aconfig/storage/FlagType;

.field public static final enum blacklist FixedReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

.field public static final enum blacklist ReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

.field public static final enum blacklist ReadWriteBoolean:Landroid/internal/aconfig/storage/FlagType;


# instance fields
.field public final blacklist type:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/internal/aconfig/storage/FlagType;
    .locals 3

    sget-object v0, Landroid/internal/aconfig/storage/FlagType;->ReadWriteBoolean:Landroid/internal/aconfig/storage/FlagType;

    sget-object v1, Landroid/internal/aconfig/storage/FlagType;->ReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

    sget-object v2, Landroid/internal/aconfig/storage/FlagType;->FixedReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

    filled-new-array {v0, v1, v2}, [Landroid/internal/aconfig/storage/FlagType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/internal/aconfig/storage/FlagType;

    const-string v1, "ReadWriteBoolean"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FlagType;->ReadWriteBoolean:Landroid/internal/aconfig/storage/FlagType;

    new-instance v0, Landroid/internal/aconfig/storage/FlagType;

    const-string v1, "ReadOnlyBoolean"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FlagType;->ReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

    new-instance v0, Landroid/internal/aconfig/storage/FlagType;

    const-string v1, "FixedReadOnlyBoolean"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FlagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FlagType;->FixedReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

    invoke-static {}, Landroid/internal/aconfig/storage/FlagType;->$values()[Landroid/internal/aconfig/storage/FlagType;

    move-result-object v0

    sput-object v0, Landroid/internal/aconfig/storage/FlagType;->$VALUES:[Landroid/internal/aconfig/storage/FlagType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/internal/aconfig/storage/FlagType;->type:I

    return-void
.end method

.method public static blacklist fromInt(I)Landroid/internal/aconfig/storage/FlagType;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/internal/aconfig/storage/FlagType;->FixedReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

    return-object p0

    :cond_1
    sget-object p0, Landroid/internal/aconfig/storage/FlagType;->ReadOnlyBoolean:Landroid/internal/aconfig/storage/FlagType;

    return-object p0

    :cond_2
    sget-object p0, Landroid/internal/aconfig/storage/FlagType;->ReadWriteBoolean:Landroid/internal/aconfig/storage/FlagType;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/internal/aconfig/storage/FlagType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/internal/aconfig/storage/FlagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/internal/aconfig/storage/FlagType;

    return-object p0
.end method

.method public static blacklist values()[Landroid/internal/aconfig/storage/FlagType;
    .locals 1

    sget-object v0, Landroid/internal/aconfig/storage/FlagType;->$VALUES:[Landroid/internal/aconfig/storage/FlagType;

    invoke-virtual {v0}, [Landroid/internal/aconfig/storage/FlagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/internal/aconfig/storage/FlagType;

    return-object v0
.end method
