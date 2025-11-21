.class final Landroid/view/ViewProtoLogGroups;
.super Ljava/lang/Object;
.source "ViewProtoLogGroups.java"


# static fields
.field static final blacklist ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

.field static final blacklist IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/internal/protolog/ProtoLogGroup;

    const-string v1, "InsetsController"

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v2

    const-string v3, "IME_INSETS_CONTROLLER"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/internal/protolog/ProtoLogGroup;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Landroid/view/ViewProtoLogGroups;->IME_INSETS_CONTROLLER:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    sput-object v1, Landroid/view/ViewProtoLogGroups;->ALL_GROUPS:[Lcom/android/internal/protolog/ProtoLogGroup;

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
