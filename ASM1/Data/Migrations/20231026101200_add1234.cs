using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ASM1.Data.Migrations
{
    public partial class add1234 : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "AuthorName",
                table: "Product");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "AuthorName",
                table: "Product",
                type: "nvarchar(max)",
                nullable: true);
        }
    }
}
