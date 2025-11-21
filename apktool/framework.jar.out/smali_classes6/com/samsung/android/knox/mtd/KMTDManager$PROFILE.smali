.class public final enum Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;
.super Ljava/lang/Enum;
.source "KMTDManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mtd/KMTDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PROFILE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic greylist $VALUES:[Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

.field public static final enum greylist DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

.field public static final enum greylist MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

.field public static final enum greylist NORMAL:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;


# direct methods
.method private static synthetic greylist $values()[Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->NORMAL:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    sget-object v1, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    sget-object v2, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    move-result-object v0

    return-object v0
.end method

.method static constructor greylist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->NORMAL:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    const-string v1, "MANAGED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->MANAGED:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    new-instance v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    const-string v1, "DEVICE_OWNER"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->DEVICE_OWNER:Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->$values()[Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->$VALUES:[Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    const-class v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    return-object p0
.end method

.method public static greylist values()[Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;
    .locals 1

    sget-object v0, Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->$VALUES:[Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/mtd/KMTDManager$PROFILE;

    return-object v0
.end method
