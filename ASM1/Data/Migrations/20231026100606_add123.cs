using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ASM1.Data.Migrations
{
    public partial class add123 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "AuthorId",
                table: "Product",
                type: "int",
                nullable: true);

            migrationBuilder.CreateIndex(
                name: "IX_Product_AuthorId",
                table: "Product",
                column: "AuthorId");

            migrationBuilder.AddForeignKey(
                name: "FK_Product_Author_AuthorId",
                table: "Product",
                column: "AuthorId",
                principalTable: "Author",
                principalColumn: "AuthorId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Product_Author_AuthorId",
                table: "Product");

            migrationBuilder.DropIndex(
                name: "IX_Product_AuthorId",
                table: "Product");

            migrationBuilder.DropColumn(
                name: "AuthorId",
                table: "Product");
        }
    }
}
