.class public final enum Landroid/internal/aconfig/storage/FileType;
.super Ljava/lang/Enum;
.source "FileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/internal/aconfig/storage/FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

.field public static final enum blacklist PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;


# instance fields
.field public final blacklist type:I


# direct methods
.method private static synthetic blacklist $values()[Landroid/internal/aconfig/storage/FileType;
    .locals 4

    sget-object v0, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    sget-object v1, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    sget-object v2, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    sget-object v3, Landroid/internal/aconfig/storage/FileType;->FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

    filled-new-array {v0, v1, v2, v3}, [Landroid/internal/aconfig/storage/FileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "PACKAGE_MAP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "FLAG_MAP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "FLAG_VAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    new-instance v0, Landroid/internal/aconfig/storage/FileType;

    const-string v1, "FLAG_INFO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Landroid/internal/aconfig/storage/FileType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

    invoke-static {}, Landroid/internal/aconfig/storage/FileType;->$values()[Landroid/internal/aconfig/storage/FileType;

    move-result-object v0

    sput-object v0, Landroid/internal/aconfig/storage/FileType;->$VALUES:[Landroid/internal/aconfig/storage/FileType;

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

    iput p3, p0, Landroid/internal/aconfig/storage/FileType;->type:I

    return-void
.end method

.method public static blacklist fromInt(I)Landroid/internal/aconfig/storage/FileType;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Landroid/internal/aconfig/storage/FileType;->FLAG_INFO:Landroid/internal/aconfig/storage/FileType;

    return-object p0

    :cond_1
    sget-object p0, Landroid/internal/aconfig/storage/FileType;->FLAG_VAL:Landroid/internal/aconfig/storage/FileType;

    return-object p0

    :cond_2
    sget-object p0, Landroid/internal/aconfig/storage/FileType;->FLAG_MAP:Landroid/internal/aconfig/storage/FileType;

    return-object p0

    :cond_3
    sget-object p0, Landroid/internal/aconfig/storage/FileType;->PACKAGE_MAP:Landroid/internal/aconfig/storage/FileType;

    return-object p0
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Landroid/internal/aconfig/storage/FileType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Landroid/internal/aconfig/storage/FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/internal/aconfig/storage/FileType;

    return-object p0
.end method

.method public static blacklist values()[Landroid/internal/aconfig/storage/FileType;
    .locals 1

    sget-object v0, Landroid/internal/aconfig/storage/FileType;->$VALUES:[Landroid/internal/aconfig/storage/FileType;

    invoke-virtual {v0}, [Landroid/internal/aconfig/storage/FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/internal/aconfig/storage/FileType;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/internal/aconfig/storage/FileType;->type:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "unrecognized type"

    return-object p0

    :cond_0
    const-string p0, "FLAG_INFO"

    return-object p0

    :cond_1
    const-string p0, "FLAG_VAL"

    return-object p0

    :cond_2
    const-string p0, "FLAG_MAP"

    return-object p0

    :cond_3
    const-string p0, "PACKAGE_MAP"

    return-object p0
.end method
