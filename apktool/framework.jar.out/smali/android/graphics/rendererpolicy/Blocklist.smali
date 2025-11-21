.class public Landroid/graphics/rendererpolicy/Blocklist;
.super Ljava/lang/Object;
.source "Blocklist.java"


# instance fields
.field private final blacklist items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public blacklist getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/rendererpolicy/BlockItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/graphics/rendererpolicy/Blocklist;->items:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method
