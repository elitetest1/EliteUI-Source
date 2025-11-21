.class public Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;
.super Ljava/lang/Object;
.source "AppFunctionStaticMetadataHelper.java"


# static fields
.field public static final blacklist APP_FUNCTION_INDEXER_PACKAGE:Ljava/lang/String; = "android"

.field public static final blacklist APP_FUNCTION_STATIC_METADATA_DB:Ljava/lang/String; = "apps-db"

.field public static final blacklist APP_FUNCTION_STATIC_NAMESPACE:Ljava/lang/String; = "app_functions"

.field public static final blacklist PROPERTY_FUNCTION_ID:Ljava/lang/String; = "functionId"

.field public static final blacklist PROPERTY_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field public static final blacklist STATIC_PROPERTY_ENABLED_BY_DEFAULT:Ljava/lang/String; = "enabledByDefault"

.field public static final blacklist STATIC_PROPERTY_RESTRICT_CALLERS_WITH_EXECUTE_APP_FUNCTIONS:Ljava/lang/String; = "restrictCallersWithExecuteAppFunctions"

.field public static final blacklist STATIC_SCHEMA_TYPE:Ljava/lang/String; = "AppFunctionStaticMetadata"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getStaticMetadataQualifiedId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "app_functions"

    invoke-static {p0, p1}, Landroid/app/appfunctions/AppFunctionStaticMetadataHelper;->getDocumentIdForAppFunction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "android"

    const-string v1, "apps-db"

    invoke-static {p1, v1, v0, p0}, Landroid/app/appsearch/util/DocumentIdUtil;->createQualifiedId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getStaticSchemaNameForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppFunctionStaticMetadata-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
