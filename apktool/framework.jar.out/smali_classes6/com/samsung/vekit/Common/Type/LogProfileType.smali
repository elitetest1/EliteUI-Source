.class public final enum Lcom/samsung/vekit/Common/Type/LogProfileType;
.super Ljava/lang/Enum;
.source "LogProfileType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/vekit/Common/Type/LogProfileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Lcom/samsung/vekit/Common/Type/LogProfileType;

.field public static final enum blacklist ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

.field public static final enum blacklist COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;


# direct methods
.method private static synthetic blacklist $values()[Lcom/samsung/vekit/Common/Type/LogProfileType;
    .locals 2

    sget-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;

    sget-object v1, Lcom/samsung/vekit/Common/Type/LogProfileType;->ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

    filled-new-array {v0, v1}, [Lcom/samsung/vekit/Common/Type/LogProfileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/vekit/Common/Type/LogProfileType;

    const-string v1, "COMMON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/LogProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->COMMON:Lcom/samsung/vekit/Common/Type/LogProfileType;

    new-instance v0, Lcom/samsung/vekit/Common/Type/LogProfileType;

    const-string v1, "ADAPTIVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/vekit/Common/Type/LogProfileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->ADAPTIVE:Lcom/samsung/vekit/Common/Type/LogProfileType;

    invoke-static {}, Lcom/samsung/vekit/Common/Type/LogProfileType;->$values()[Lcom/samsung/vekit/Common/Type/LogProfileType;

    move-result-object v0

    sput-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->$VALUES:[Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static blacklist valueOf(Ljava/lang/String;)Lcom/samsung/vekit/Common/Type/LogProfileType;
    .locals 1

    const-class v0, Lcom/samsung/vekit/Common/Type/LogProfileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-object p0
.end method

.method public static blacklist values()[Lcom/samsung/vekit/Common/Type/LogProfileType;
    .locals 1

    sget-object v0, Lcom/samsung/vekit/Common/Type/LogProfileType;->$VALUES:[Lcom/samsung/vekit/Common/Type/LogProfileType;

    invoke-virtual {v0}, [Lcom/samsung/vekit/Common/Type/LogProfileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/vekit/Common/Type/LogProfileType;

    return-object v0
.end method
