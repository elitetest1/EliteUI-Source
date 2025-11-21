.class public final Landroid/content/om/OverlayManagerTransaction$Request;
.super Ljava/lang/Object;
.source "OverlayManagerTransaction.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/OverlayManagerTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/OverlayManagerTransaction$Request$RequestType;
    }
.end annotation


# static fields
.field public static final blacklist BUNDLE_FABRICATED_OVERLAY:Ljava/lang/String; = "fabricated_overlay"

.field public static final blacklist TYPE_REGISTER_FABRICATED:I = 0x2

.field public static final blacklist TYPE_SET_DISABLED:I = 0x1

.field public static final blacklist TYPE_SET_ENABLED:I = 0x0

.field public static final blacklist TYPE_UNREGISTER_FABRICATED:I = 0x3


# instance fields
.field public final blacklist constraints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist extras:Landroid/os/Bundle;

.field public final blacklist overlay:Landroid/content/om/OverlayIdentifier;

.field public final blacklist type:I

.field public final blacklist userId:I


# direct methods
.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;I)V
    .locals 6

    const/4 v4, 0x0

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;)V
    .locals 6

    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/om/OverlayIdentifier;",
            "I",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    iput-object p2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iput p3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    iput-object p4, p0, Landroid/content/om/OverlayManagerTransaction$Request;->extras:Landroid/os/Bundle;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p5, p0, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>(ILandroid/content/om/OverlayIdentifier;ILjava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/om/OverlayIdentifier;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayConstraint;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/content/om/OverlayManagerTransaction$Request;-><init>(ILandroid/content/om/OverlayIdentifier;ILandroid/os/Bundle;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/om/OverlayManagerTransaction$Request;->typeToString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/om/OverlayManagerTransaction$Request;->overlay:Landroid/content/om/OverlayIdentifier;

    iget v3, p0, Landroid/content/om/OverlayManagerTransaction$Request;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object p0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->constraints:Ljava/util/List;

    invoke-static {p0}, Landroid/content/om/OverlayConstraint;->constraintsToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Request{type=0x%02x (%s), overlay=%s, userId=%d, constraints=%s}"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist typeToString()Ljava/lang/String;
    .locals 1

    iget p0, p0, Landroid/content/om/OverlayManagerTransaction$Request;->type:I

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "TYPE_UNKNOWN (0x%02x)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "TYPE_UNREGISTER_FABRICATED"

    return-object p0

    :cond_1
    const-string p0, "TYPE_REGISTER_FABRICATED"

    return-object p0

    :cond_2
    const-string p0, "TYPE_SET_DISABLED"

    return-object p0

    :cond_3
    const-string p0, "TYPE_SET_ENABLED"

    return-object p0
.end method
